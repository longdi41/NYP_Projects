package itp231.dba.nyp.com.teamsconqerevents.Database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

/**
 * Created by Ariel on 19/7/2016.
 */
public class MyLeaderDbAdapter {
    private static final String DATABASE_NAME = "Leader.db";
    private static final String DATABASE_TABLE = "myLeaderDb";
    private static final int DATABASE_VERSION = 1;
    private SQLiteDatabase _db;
    private final Context context;

    public static final String KEY_ID = "Leaderboard_Id";
    public static final int COLUMN_KEY_ID = 0;

    public static final String ENTRY_EVENTID = "Event_ID";
    public static final int COLUMN_EVENT_ID = 1;

    public static final String ENTRY_TEAMID = "Team_Id";
    public static final int COLUMN_TEAM_ID = 2;

    public static final String ENTRY_SCORE = "Score";
    public static final int COLUMN_SCORE_ID = 3;

    protected static final String DATABASE_CREATE = "create table " +
            DATABASE_TABLE + " " + "("+
            KEY_ID + " integer primary key autoincrement, " +
            ENTRY_EVENTID + " Text, " +
            ENTRY_TEAMID + " Text, " +
            ENTRY_SCORE + " Integer); ";

    private String MyLeaderDbAdapter_LOG_CAT = "MY_LOG";

    private MyLeaderDBOpenHelper dbHelper;

    public MyLeaderDbAdapter(Context _context) {
        this.context = _context;

        dbHelper = new MyLeaderDBOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION);

    }

    public void close(){
        _db.close();
        Log.w(MyLeaderDbAdapter_LOG_CAT,"DB Closed");
    }

    public void open() throws SQLiteException
    {
        try
        {
            _db = dbHelper.getWritableDatabase();
            Log.w(MyLeaderDbAdapter_LOG_CAT, "DB opened as writable database");
        }
        catch(SQLiteException e)
        {
            _db = dbHelper.getReadableDatabase();
            Log.w(MyLeaderDbAdapter_LOG_CAT, "DB opened as readable database");
        }
    }

    public long insertEntry(String entryEventId, String entryTeamId, int entryTeamScore)
    {
        ContentValues newEntryValues = new ContentValues();

        newEntryValues.put(ENTRY_EVENTID, entryEventId);
        newEntryValues.put(ENTRY_TEAMID, entryTeamId);
        newEntryValues.put(ENTRY_SCORE, entryTeamScore);

        Log.w(MyLeaderDbAdapter_LOG_CAT, "Inserted EntryEventId = " + entryEventId
                + "EntryTeamId = " + entryTeamId + "EntryTeamScore = " + entryTeamScore + " into table " + DATABASE_TABLE);

        return _db.insert(DATABASE_TABLE, null, newEntryValues);
    }


    public boolean removeEntry(long _rowIndex){
        if(_db.delete(DATABASE_TABLE,KEY_ID + " = " + _rowIndex, null)<=0){
            Log.w(MyLeaderDbAdapter_LOG_CAT, "Removing entry where id=" + _rowIndex + "Failed");
            return false;
        }
        Log.w(MyLeaderDbAdapter_LOG_CAT,"Removing entry where id = " + _rowIndex + " Success");
        return true;
    }

    public Cursor retriveAllEntriesCursor(){
        Cursor c = null;
        //String columnNames[] = {KEY_ID,ENTRY_EVENTID,ENTRY_TEAMID,ENTRY_SCORE};

        try{
            c = _db.query(DATABASE_TABLE, new String[] {KEY_ID, ENTRY_EVENTID, ENTRY_TEAMID, ENTRY_SCORE},
                    null, null, null, null, null);
        }
        catch (SQLiteException e){
            Log.w(MyLeaderDbAdapter_LOG_CAT, "Retrieve failed");
        }

        return c;
    }

    public class MyLeaderDBOpenHelper extends SQLiteOpenHelper{

        public MyLeaderDBOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
            super(context, name, factory, version);
        }

        @Override
        public void onCreate(SQLiteDatabase db){
            db.execSQL(DATABASE_CREATE);
            Log.w(MyLeaderDbAdapter_LOG_CAT,"Helper: DB " + DATABASE_TABLE +" Created!!");
        }

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

        }
    }

}
