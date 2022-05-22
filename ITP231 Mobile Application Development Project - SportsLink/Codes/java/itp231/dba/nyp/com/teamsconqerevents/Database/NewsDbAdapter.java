package itp231.dba.nyp.com.teamsconqerevents.Database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.NewsFeed;

/**
 * Created by Jun Long on 25/7/2016.
 */
public class NewsDbAdapter {
    private static final String DATABASE_NAME = "NewsFeed.db";
    private static final String DATABASE_TABLE = "NewsFeedDb";
    private static final int DATABASE_VERSION = 1;
    private SQLiteDatabase _db;
    private final Context context;
    private MyNewsDBOpenHelper dbHelper;

    public NewsDbAdapter(Context _context) {
        this.context = _context;
        dbHelper = new MyNewsDBOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public static final String KEY_ID = "_id";
    public static final int COLUMN_KEY_ID = 0;

    public static final String ENTRY_NEWSINFO = "newsinfo";
    public static final int COLUMN_NEWS_ID = 1;

    protected static final String DATABASE_CREATE = "create table " +
            DATABASE_TABLE + " " + "(" +
            KEY_ID + " integer primary key autoincrement, " +
            ENTRY_NEWSINFO + " Text);";

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
    public long insertEntry(NewsFeed n) {
        // Create a new record
        ContentValues newEntryValues = new ContentValues();

        // Assign values for each row
        newEntryValues.put(ENTRY_NEWSINFO, n.getNews());

        // Insert the row
        Log.w(MYDBADAPTER_LOG_CAT, "Inserted NewsInfo = " + n.getNews() +
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
            c = _db.query(DATABASE_TABLE, new String[] {KEY_ID, ENTRY_NEWSINFO}, null, null, null, null, null);
    } catch (SQLiteException e) {
            Log.w(MYDBADAPTER_LOG_CAT, "Retrieve fail!");
        }

        return c;
    }

    // Create another class
    public class MyNewsDBOpenHelper extends SQLiteOpenHelper {
        public MyNewsDBOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
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

