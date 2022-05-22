package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;

import java.security.AuthProvider;
import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.MyEventsDbAdapter;
import itp231.dba.nyp.com.teamsconqerevents.Database.MyUpcomingDbAdapter;

/**
 * Created by Jun Long on 4/7/2016.
 */
public class UpcomingApplication extends Application{
    private ArrayList<AutoEvents> eventsArray;
    private static UpcomingApplication ourInstance = new UpcomingApplication();

    public static UpcomingApplication getInstance() {
        return ourInstance;
    }

    public UpcomingApplication() {
        eventsArray = new ArrayList<AutoEvents>();

    }

    public ArrayList<AutoEvents> getArray() {
        populateArray();
        return eventsArray;
    }

    public void populateArray() {
        AutoEvents a = new AutoEvents("Badminton", "Sept 1 2016", "2pm", "Anyone want to play badminton? Join us now during your free time.", null, null);
        eventsArray.add(a);

        AutoEvents a1 = new AutoEvents("Squash", "Nov 21 2016", "7pm", "Anyone beat Aun Yeow? Join us and battle with Aun Yeow. He lost to coach for 0-2. Today, Aun Yeow is back and get revenge", null, null);
        eventsArray.add(a1);
    }

    // Database
    public static long addToDatabase(AutoEvents e, Context c) {
        MyUpcomingDbAdapter db = new MyUpcomingDbAdapter(c);
        db.open();

        long rowIDofInsertedEntry = db.insertEntry(e);

        db.close();

        return  rowIDofInsertedEntry;
    }

    public static boolean deleteFrmDatabase(int rowID, Context c) {
        MyUpcomingDbAdapter db = new MyUpcomingDbAdapter(c);
        db.open();

        boolean updatedStatus = db.removeEntry(rowID);

        db.close();

        return updatedStatus;
    }

    public void populateArrayFromDatabase(Context c) {
        eventsArray.clear();

        MyUpcomingDbAdapter db = new MyUpcomingDbAdapter(c);
        db.open();

        Cursor cur = db.retrieveAllEntriesCursor();
        if (cur.getCount() > 0) {
            cur.moveToFirst();
            do {
                int rowID = cur.getInt(MyUpcomingDbAdapter.COLUMN_KEY_ID);
                String eventname = cur.getString(MyUpcomingDbAdapter.COLUMN_NAME_ID);
                String eventdate = cur.getString(MyUpcomingDbAdapter.COLUMN_DATE_ID);
                String eventtime = cur.getString(MyUpcomingDbAdapter.COLUMN_TIME_ID);
                String description = cur.getString(MyUpcomingDbAdapter.COLUMN_DESCRIPTION_ID);
                String team1id = cur.getString(MyUpcomingDbAdapter.COLUMN_TEAMONEID_ID);
                String team2id = cur.getString(MyUpcomingDbAdapter.COLUMN_TEAMTWOID_ID);

                AutoEvents a = new AutoEvents(rowID, eventname, eventdate, eventtime, description, team1id, team2id);
                eventsArray.add(a);
            } while (cur.moveToNext());

            db.close();
        }
    }

}

