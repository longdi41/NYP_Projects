package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.MyEventsDbAdapter;

/**
 * Created by Jun Long on 4/7/2016.
 */
public class EventsApplication extends Application{
    private ArrayList<EventsOOP> eventsArray;
    private static EventsApplication ourInstance = new EventsApplication();

    public static EventsApplication getInstance() {
        return ourInstance;
    }

    public EventsApplication() {
        eventsArray = new ArrayList<EventsOOP>();
    }

    public ArrayList<EventsOOP> getArray() {
        return eventsArray;
    }

    // Database
    public static long addToDatabase(EventsOOP e, Context c) {
        MyEventsDbAdapter db = new MyEventsDbAdapter(c);
        db.open();

        long rowIDofInsertedEntry = db.insertEntry(e);

        db.close();

        return  rowIDofInsertedEntry;
    }

    public static boolean updateDatabase(EventsOOP e, int rowID, Context c) {
        MyEventsDbAdapter db = new MyEventsDbAdapter(c);
        db.open();

        boolean updateStatus = db.updateEntry(rowID, e);

        db.close();

        return updateStatus;
    }

    public static boolean deleteFrmDatabase(int rowID, Context c) {
        MyEventsDbAdapter db = new MyEventsDbAdapter(c);
        db.open();

        boolean updatedStatus = db.removeEntry(rowID);

        db.close();

        return updatedStatus;
    }

    public void populateArrayFromDatabase(Context c) {
        eventsArray.clear();

        MyEventsDbAdapter db = new MyEventsDbAdapter(c);
        db.open();

        Cursor cur = db.retrieveAllEntriesCursor();
        if (cur.getCount() > 0) {
            cur.moveToFirst();
            do {
                int rowID = cur.getInt(MyEventsDbAdapter.COLUMN_KEY_ID);
                String eventname = cur.getString(MyEventsDbAdapter.COLUMN_NAME_ID);
                String eventdate = cur.getString(MyEventsDbAdapter.COLUMN_DATE_ID);
                String eventtime = cur.getString(MyEventsDbAdapter.COLUMN_TIME_ID);
                String description = cur.getString(MyEventsDbAdapter.COLUMN_DESCRIPTION_ID);
                String team1id = cur.getString(MyEventsDbAdapter.COLUMN_TEAMONEID_ID);
                String team2id = cur.getString(MyEventsDbAdapter.COLUMN_TEAMTWOID_ID);
                int team1score = cur.getInt(MyEventsDbAdapter.COLUMN_TEAMONESCORE);
                int team2score = cur.getInt(MyEventsDbAdapter.COLUMN_TEAMTWOSCORE);

                EventsOOP e = new EventsOOP(rowID, eventname, eventdate, eventtime, description, team1id, team2id, team1score, team2score);
                eventsArray.add(e);
            } while (cur.moveToNext());

            db.close();
        }
    }

}

