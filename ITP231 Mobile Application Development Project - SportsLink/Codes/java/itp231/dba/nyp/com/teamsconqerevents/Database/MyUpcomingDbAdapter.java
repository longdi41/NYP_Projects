package itp231.dba.nyp.com.teamsconqerevents.Database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.AutoEvents;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsOOP;

/**
 * Created by Jun Long on 4/7/2016.
 */
public class MyUpcomingDbAdapter {
    private static final String DATABASE_NAME = "UpcomingEvents.db";
    private static final String DATABASE_TABLE = "UpcomingEventsDb";
    private static final int DATABASE_VERSION = 1;
    private SQLiteDatabase _db;
    private final Context context;
    private MyEventsDBOpenHelper dbHelper;

    public MyUpcomingDbAdapter(Context _context) {
        this.context = _context;
        dbHelper = new MyEventsDBOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public static final String KEY_ID = "_id";
    public static final int COLUMN_KEY_ID = 0;

    public static final String ENTRY_EVENTNAME = "eventname";
    public static final int COLUMN_NAME_ID = 1;

    public static final String ENTRY_EVENTDATE = "eventdate";
    public static final int COLUMN_DATE_ID = 2;

    public static final String ENTRY_EVENTTIME = "eventtime";
    public static final int COLUMN_TIME_ID = 3;

    public static final String ENTRY_DESCRIPTION = "eventdescription";
    public static final int COLUMN_DESCRIPTION_ID = 4;

    public static final String ENTRY_TEAMONEID = "teamOneid";
    public static final int COLUMN_TEAMONEID_ID = 5;

    public static final String ENTRY_TEAMTWOID = "teamTwoid";
    public static final int COLUMN_TEAMTWOID_ID = 6;

    protected static final String DATABASE_CREATE = "create table " +
            DATABASE_TABLE + " " + "(" +
            KEY_ID + " integer primary key autoincrement, " +
            ENTRY_EVENTNAME + " Text, " +
            ENTRY_EVENTDATE + " Text, " +
            ENTRY_EVENTTIME + " Text, " +
            ENTRY_DESCRIPTION + " Text, " +
            ENTRY_TEAMONEID + " Text, " +
            ENTRY_TEAMTWOID + " Text);";

    private String MYDBADAPTER_LOG_CAT = "MY_LOG";

    // Open Close Method
    public void open() throws SQLiteException {
        try {
            _db = dbHelper.getWritableDatabase();
            Log.w(MYDBADAPTER_LOG_CAT, "DB opened as writable database");
        } catch(SQLiteException e) {
            _db = dbHelper.getReadableDatabase();
            Log.w(MYDBADAPTER_LOG_CAT, "DB opened as readable database");
        }
    }

    public void close() {
        _db.close();
        Log.w(MYDBADAPTER_LOG_CAT, "DB closed");
    }

    // Insert Method
    public long insertEntry(AutoEvents e) {
        // Create a new record
        ContentValues newEntryValues = new ContentValues();

        // Assign values for each row
        newEntryValues.put(ENTRY_EVENTNAME, e.getEventName());
        newEntryValues.put(ENTRY_EVENTDATE, e.getEventDate());
        newEntryValues.put(ENTRY_EVENTTIME, e.getEventTime());
        newEntryValues.put(ENTRY_DESCRIPTION, e.getDescription());
        newEntryValues.put(ENTRY_TEAMONEID, e.getTeam1id());
        newEntryValues.put(ENTRY_TEAMTWOID, e.getTeam2id());

        // Insert the row
        Log.w(MYDBADAPTER_LOG_CAT, "Inserted EventName = " + e.getEventName() +
                "EventDate = " + e.getEventDate() +
                "EventTime = " + e.getEventTime() +
                "Description = " + e.getDescription() +
                "TeamOneId = " + e.getTeam1id() +
                "TeamTwoId = " + e.getTeam2id() +
                " into table " + DATABASE_TABLE);

        return _db.insert(DATABASE_TABLE, null, newEntryValues);
    }

    // Remove Method
    public boolean removeEntry(long _rowIndex) {
        if (_db.delete(DATABASE_TABLE, KEY_ID + " = " + _rowIndex, null) <= 0) {
            Log.w(MYDBADAPTER_LOG_CAT, "Removing entry where id = " + _rowIndex + " Failed");
            return false;
        }
        Log.w(MYDBADAPTER_LOG_CAT, "Removing entry where id = " + _rowIndex + " Success");
        return true;
    }

    // Retrieve Method
    public Cursor retrieveAllEntriesCursor() {
        Cursor c = null;

        try {
            c = _db.query(DATABASE_TABLE, new String[] {KEY_ID, ENTRY_EVENTNAME, ENTRY_EVENTDATE, ENTRY_EVENTTIME, ENTRY_DESCRIPTION, ENTRY_TEAMONEID, ENTRY_TEAMTWOID}, null, null, null, null, null);
        } catch (SQLiteException e) {
            Log.w(MYDBADAPTER_LOG_CAT, "Retrieve fail!");
        }

        return c;
    }

    // Create another class
    public class MyEventsDBOpenHelper extends SQLiteOpenHelper {
        public MyEventsDBOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
            super(context, name, factory, version);
        }

        // Complusory Methods
        public void onCreate(SQLiteDatabase db) {
            db.execSQL(DATABASE_CREATE);
            Log.w(MYDBADAPTER_LOG_CAT, "Helper : DB " + DATABASE_TABLE + " Created!!");
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

        }
    }
}
