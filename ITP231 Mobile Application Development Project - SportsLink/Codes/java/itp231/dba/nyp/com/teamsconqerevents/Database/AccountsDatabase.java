package itp231.dba.nyp.com.teamsconqerevents.Database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

/**
 * Created by shahbaz on 18/7/2016.
 */
public class AccountsDatabase {
    private static final int DATABASE_VERSION = 1;
    private static final String DATABASE_NAME = "accounts.db";
    public static final String DATABASE_TABLE = "accounts";
    private SQLiteDatabase _db;
    private final Context context;

    public static final String KEY_ID = "_id";
    public static final int COLUMN_KEY_ID = 0;

    public static final String ENTRY_NAME = "name";
    public static final int COLUMN_NAME = 1;

    public static final String ENTRY_EMAIL = "email";
    public static final int COLUMN_EMAIL = 2;

    public static final String ENTRY_PASSWORD = "password";
    public static final int COLUMN_PASSWORD = 3;

    public static final String ENTRY_DATEOFBIRTH = "dateOfBirth";
    public static final int COLUMN_DATEOFBIRTH = 4;

    private String MYDBADAPTER_LOG_CAT = "MY_LOG";

    private MyDBOpenHelper dbHelper;

    protected static final String DATABASE_CREATE = "create table " + DATABASE_TABLE + " " + "("
            + KEY_ID + " integer primary key autoincrement, "
            + ENTRY_NAME + " Text, "
            + ENTRY_EMAIL + " Text, "
            + ENTRY_PASSWORD + " Text, "
            + ENTRY_DATEOFBIRTH + " Text);";

    public AccountsDatabase(Context _context) {
        this.context = _context;
        dbHelper = new MyDBOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public void close() {
        _db.close();
        Log.w(MYDBADAPTER_LOG_CAT, "DB closed");
    }

    public void open() throws SQLiteException {
        try {
            _db = dbHelper.getWritableDatabase();
            Log.w(MYDBADAPTER_LOG_CAT, "DB opened as writable database");
        } catch (SQLiteException e) {
            _db = dbHelper.getReadableDatabase();
            Log.w(MYDBADAPTER_LOG_CAT, "DB opened as readable database");
        }
    }

    // insert data
    public long insertEntry(String entryName, String entryEmail, String entryPassword, String entryDateOfBirth) {
        // Create a new record
        ContentValues newEntryValues = new ContentValues();

        // Assign values for each row
        newEntryValues.put(ENTRY_NAME, entryName);
        newEntryValues.put(ENTRY_EMAIL, entryEmail);
        newEntryValues.put(ENTRY_PASSWORD, entryPassword);
        newEntryValues.put(ENTRY_DATEOFBIRTH, entryDateOfBirth);

        // Insert the row
        Log.w(MYDBADAPTER_LOG_CAT, "Inserted EntryName = " + entryName
                + "EntryEmail = " + entryEmail + "EntryPassword = " + entryPassword
                + "EntryDateOfBirth = " + entryDateOfBirth + " into table " + DATABASE_TABLE);

        return _db.insert(DATABASE_TABLE, null, newEntryValues);
    }

    public Cursor retrieveAllEntriesCursor() {
        Cursor c = null;

        try {
            c = _db.query(DATABASE_TABLE, new String[]{KEY_ID, ENTRY_NAME, ENTRY_EMAIL, ENTRY_PASSWORD, ENTRY_DATEOFBIRTH},
                    null, null, null, null, null);

        } catch (SQLiteException e) {
            Log.w(MYDBADAPTER_LOG_CAT, "Retrive fail!");
        }

        return c;
    }

        public class MyDBOpenHelper extends SQLiteOpenHelper {
            public MyDBOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
                super(context, name, factory, version);
                // TODO Auto-generated constructor stub
            }

            @Override
            public void onCreate(SQLiteDatabase db) {
                // TODO Auto-generated method stub
                db.execSQL(DATABASE_CREATE);
                Log.w(MYDBADAPTER_LOG_CAT, "Helper : DB " + DATABASE_TABLE + " Created!!");
            }

            @Override
            public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
                // TODO Auto-generated method stub

            }

        }


    }

