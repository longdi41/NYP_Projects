package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.AccountsDatabase;

/**
 * Created by Jun Long on 7/8/2016.
 */
public class ControlAccountDatabase extends Application {
    private static ControlAccountDatabase ourInstance = new ControlAccountDatabase();
    public static ControlAccountDatabase getInstance() {
        return ourInstance;
    }
    private ArrayList<Accounts> AccountArrayList;

    public ControlAccountDatabase() {
        AccountArrayList = new ArrayList<Accounts>();
    }
    public ArrayList<Accounts> getArray() {
        return AccountArrayList;
    }

    public static long addToDatabase(Accounts accounts, Context c) {
        AccountsDatabase db = new AccountsDatabase(c);
        db.open();
        long rowIDofInsertedEntry = db.insertEntry(accounts.get_name(), accounts.get_email(), accounts.get_password(), accounts.get_dateOfBirth());
        db.close();
        return rowIDofInsertedEntry;
    }

    public String populateArrayFromDB(Context c, String checkName, String checkPassword) {
        String notes = "";
        AccountsDatabase db = new AccountsDatabase(c);
        db.open();
        Cursor cur = db.retrieveAllEntriesCursor();
        if(cur.getCount()>0) {
            cur.moveToFirst();
            do {
                String name = cur.getString(AccountsDatabase.COLUMN_NAME);
                if (name.equals(checkName)) {
                    String password= cur.getString(AccountsDatabase.COLUMN_PASSWORD);
                    if (password.equals(checkPassword)) {
                        notes = "Correct";
                    }
                    else {
                        notes = "";
                    }
                }
                else {
                    notes = "";
                }
            } while (cur.moveToNext());

            String message;
            if (notes.equals("")) {
                message = "Wrong UserName and Password. Please try again.";
            }
            else {
                message = "success";
            }

            return message;
        }
        db.close();
        return notes;
    }
}
