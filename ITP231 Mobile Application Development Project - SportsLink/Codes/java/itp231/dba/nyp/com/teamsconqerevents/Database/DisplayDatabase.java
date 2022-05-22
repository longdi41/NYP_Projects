package itp231.dba.nyp.com.teamsconqerevents.Database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by shahbaz on 18/7/2016.
 */
public class DisplayDatabase extends SQLiteOpenHelper {
    private static final int DATABASE_VERSION=1;
    private static final String DATABASE_NAME="profile.db";
    public static final String DATABASE_TABLE = "profile";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_NAME = "name";
    public static final String COLUMN_GENDER = "gender";
    public static final String COLUMN_DATEOFBIRTH = "dateOfBirth";
    public static final String COLUMN_HOMETOWN = "hometown";
    public static final String COLUMN_ABOUTYOU = "aboutYou";


    public DisplayDatabase(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    //create
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("create table " + DATABASE_TABLE + " (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, GENDER TEXT, DATEOFBIRTH TEXT, HOMETOWN TEXT, ABOUTYOU TEXT)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + DATABASE_TABLE);
        onCreate(db);
    }

    // insert data
    public boolean insertData(String name, String gender, String dateOfbirth, String hometown, String aboutYou) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_NAME,name);
        contentValues.put(COLUMN_GENDER,gender);
        contentValues.put(COLUMN_DATEOFBIRTH,dateOfbirth);
        contentValues.put(COLUMN_HOMETOWN,hometown);
        contentValues.put(COLUMN_ABOUTYOU,aboutYou);
        long result = db.insert(DATABASE_TABLE,null,contentValues);
        if (result == -1)
            return false;
        else
            return true;
    }


    public Cursor getAllData() {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor res = db.rawQuery("select * from " + DATABASE_TABLE, null);
        return res;

    }
    // update data
    public boolean updateData(String name, String gender, String dateOfbirth, String hometown, String aboutYou) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_NAME,name);
        contentValues.put(COLUMN_GENDER,gender);
        contentValues.put(COLUMN_DATEOFBIRTH,dateOfbirth);
        contentValues.put(COLUMN_HOMETOWN,hometown);
        contentValues.put(COLUMN_ABOUTYOU,aboutYou);
        db.update(DATABASE_TABLE, contentValues, "ID = ?", new String[] {COLUMN_ID });
        return true;

    }
}
