package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.NewsDbAdapter;

/**
 * Created by Jun Long on 25/7/2016.
 */
public class NewsInstance extends Application{
    private ArrayList<NewsFeed> newsArray;
    private static NewsInstance ourInstance = new NewsInstance();

    public static NewsInstance getInstance() {
        return ourInstance;
    }

    public NewsInstance() {
        newsArray = new ArrayList<NewsFeed>();
    }

    public ArrayList<NewsFeed> getArray() {
        return newsArray;
    }

    // Database
    public static long addToDatabase(NewsFeed n, Context c) {
        NewsDbAdapter db = new NewsDbAdapter(c);
        db.open();

        long rowIDofInsertedEntry = db.insertEntry(n);

        db.close();

        return  rowIDofInsertedEntry;
    }

    public static boolean deleteFrmDatabase(int rowID, Context c) {
        NewsDbAdapter db = new NewsDbAdapter(c);
        db.open();

        boolean updatedStatus = db.removeEntry(rowID);

        db.close();

        return updatedStatus;
    }

    public void populateArrayFromDatabase(Context c) {
        newsArray.clear();

        NewsDbAdapter db = new NewsDbAdapter(c);
        db.open();

        Cursor cur = db.retrieveAllEntriesCursor();
        if (cur.getCount() > 0) {
            cur.moveToFirst();
            do {
                int rowID = cur.getInt(NewsDbAdapter.COLUMN_KEY_ID);
                String newsinfo = cur.getString(NewsDbAdapter.COLUMN_NEWS_ID);

                NewsFeed n = new NewsFeed(rowID, newsinfo);
                newsArray.add(n);
            } while (cur.moveToNext());

            db.close();
        }
    }
}
