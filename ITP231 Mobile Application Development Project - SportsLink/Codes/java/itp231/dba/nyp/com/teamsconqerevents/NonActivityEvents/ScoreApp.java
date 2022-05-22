package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.MyLeaderDbAdapter;

public class ScoreApp extends Application {
    private ArrayList<Scores> scoresArray;

    private static ScoreApp ourInstance = new ScoreApp();

    public static ScoreApp getInstance() {
        return ourInstance;
    }

    public ScoreApp() {
        scoresArray = new ArrayList<Scores>();
    }

    public ArrayList<Scores> getArray() {
        return scoresArray;
    }

    public static long addToDatabase(Scores score, Context c) {
        MyLeaderDbAdapter db = new MyLeaderDbAdapter(c);
        db.open();
        long rowIDofInsertedEntry = db.insertEntry(score.getEventId(), score.getTeamId(), score.getScore());
        db.close();
        return rowIDofInsertedEntry;
    }

    public static boolean deleteFrmDatabase(int rowID, Context c) {

        MyLeaderDbAdapter db = new MyLeaderDbAdapter(c);
        db.open();
        boolean updateStatus = db.removeEntry(rowID);
        db.close();
        return updateStatus;
    }

    public void populateArrayFromDB(Context c) {
        scoresArray.clear();
        MyLeaderDbAdapter db = new MyLeaderDbAdapter(c);
        db.open();
        Cursor cur = db.retriveAllEntriesCursor();
        if(cur.getCount()>0){
            cur.moveToFirst();
            do{
                int rowID = cur.getInt(MyLeaderDbAdapter.COLUMN_KEY_ID);
                String eventId = cur.getString(MyLeaderDbAdapter.COLUMN_EVENT_ID);
                String teamId = cur.getString(MyLeaderDbAdapter.COLUMN_TEAM_ID);
                int score = cur.getInt(MyLeaderDbAdapter.COLUMN_SCORE_ID);
                Scores sco = new Scores(rowID, eventId, teamId, score);
                scoresArray.add(sco);
            } while (cur.moveToNext());
        }
        db.close();
    }
}