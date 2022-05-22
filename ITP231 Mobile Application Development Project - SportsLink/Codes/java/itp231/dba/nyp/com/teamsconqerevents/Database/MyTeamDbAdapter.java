package itp231.dba.nyp.com.teamsconqerevents.Database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.Data;

/**
 * Created by aypro_000 on 7/4/2016.
 */
public class MyTeamDbAdapter {
    private static final int DATABASE_VERSION = 1;
    private static final String DATABASE_NAME = "Team.db";
    private static final String DATABASE_TABLE = "myTeamDb";
    private SQLiteDatabase _db;
    private final Context context;
    private MyTeamsDBOpenHelper dbHelper;

    public static final String KEY_ID = "_id";
    public static final int COLUMN_KEY_ID = 0;
    public static final String TEAM_NAME = "_name";
    public static final int COLUMN_TEAM_NAME = 1;
    public static final String TEAM_SPORT = "sport";
    public static final int COLUMN_TEAM_SPORT = 2;
    public static final String TEAM_LEADER = "leader";
    public static final int COLUMN_LEADER = 3;
    public static final String TEAM_LOCATION = "location";
    public static final int COLUMN_LOCATION = 4;
    public static final String TEAM_INFO = "info";
    public static final int COLUMN_INFO_ID = 5;

    protected static final String DATABASE_CREATE = "create table " + DATABASE_TABLE + " " + "(" + KEY_ID + " integer primary key autoincrement, " + TEAM_NAME + " Text, " + TEAM_SPORT + " Text, " + TEAM_LEADER + " Text, " + TEAM_LOCATION + " Text, " + TEAM_INFO + " text not null);";

    private String MYDBADAPTER_LOG_CAT = "MY_LOG";

    public MyTeamDbAdapter(Context _context)
    {
        this.context = _context;

        dbHelper = new MyTeamsDBOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public void close()
    {
        _db.close();
        Log.w(MYDBADAPTER_LOG_CAT, "DB closed");
    }

    public void open() throws SQLiteException
    {
        try
        {
            _db = dbHelper.getWritableDatabase();
            Log.w(MYDBADAPTER_LOG_CAT, "DB opened as writable database");
        }
        catch(SQLiteException e)
        {
            _db = dbHelper.getReadableDatabase();
            Log.w(MYDBADAPTER_LOG_CAT, "DB opened as readable database");
        }
    }

    public void dropTable(){
        _db.execSQL("DROP TABLE IF EXISTS " + DATABASE_TABLE);
        _db.execSQL(DATABASE_CREATE);
    }

    public long insertEntry(String teamName, String teamSport, String leader, String location, String info)
    {
        // Create a new record
        ContentValues newEntryValues = new ContentValues();

        // Assign values for each row
        newEntryValues.put(TEAM_NAME, teamName);
        newEntryValues.put(TEAM_SPORT, teamSport);
        newEntryValues.put(TEAM_LEADER, leader);
        newEntryValues.put(TEAM_LOCATION, location);
        newEntryValues.put(TEAM_INFO, info);


        // Insert the row
        Log.w(MYDBADAPTER_LOG_CAT, "Inserted TeamName = " + teamName
                + "TeamSport = " + teamSport + "TeamLeader = " + leader + "TeamLocation = " + location + "TeamInfo = " + info);


        return _db.insert(DATABASE_TABLE, null, newEntryValues);
    }

    public int updateEntry(Data d) {
        ContentValues newEntryValues = new ContentValues();

        newEntryValues.put(TEAM_NAME, d.getTeamName());
        newEntryValues.put(TEAM_SPORT, d.getSport());
        newEntryValues.put(TEAM_LEADER, d.getLeader());
        newEntryValues.put(TEAM_LOCATION, d.getLocation());
        newEntryValues.put(TEAM_INFO, d.getInfo());



        return _db.update(DATABASE_TABLE, newEntryValues, KEY_ID + " = ?", new String[]{String.valueOf(d.getId())});

    }

    public boolean removeEntry(long _rowIndex)
    {
        if(_db.delete(DATABASE_TABLE, KEY_ID + " = " +_rowIndex, null) <= 0)
        {
            Log.w(MYDBADAPTER_LOG_CAT, "Removing entry where id = "
                    + _rowIndex + " Failed");
            return false;
        }

        Log.w(MYDBADAPTER_LOG_CAT, "Removing entry where id = "
                + _rowIndex + " Success");

        return true;
    }

    public Cursor retrieveAllEntriesCursor()
    {
        Cursor c = null;

        try
        {
            c = _db.query(DATABASE_TABLE, new String[] {KEY_ID, TEAM_NAME, TEAM_SPORT, TEAM_LEADER, TEAM_LOCATION, TEAM_INFO}, null, null, null, null, null);
        }
        catch(SQLiteException e)
        {
            Log.w(MYDBADAPTER_LOG_CAT, "Retrive fail!");
        }

        return c;
    }

    public class MyTeamsDBOpenHelper extends SQLiteOpenHelper
    {
        public MyTeamsDBOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version)
        {
            super(context, name, factory, version);
        }

        @Override
        public void onCreate(SQLiteDatabase db)
        {
            db.execSQL(DATABASE_CREATE);
            Log.w(MYDBADAPTER_LOG_CAT, "Helper : DB " + DATABASE_TABLE + " Created!!");
        }

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
        {

        }
    }







}
