package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.MyTeamDbAdapter;

/**
 * Created by aypro_000 on 7/14/2016.
 */
public class CreateTeamsApp extends Application {
    private static CreateTeamsApp ourInstance = new CreateTeamsApp();
    public static CreateTeamsApp getInstance() {
        return  ourInstance;
    }
    private ArrayList<Data> TeamArrayList;

    public CreateTeamsApp() {
        TeamArrayList = new ArrayList<Data>();
    }
    public ArrayList<Data> getArray() {
        return TeamArrayList;
    }

    public static long addToDatabase(Data team, Context c) {
        MyTeamDbAdapter db = new MyTeamDbAdapter(c);
        db.open();
        long rowIDofInsertedEntry = db.insertEntry(team.getTeamName(), team.getSport(), team.getLeader(), team.getLocation(), team.getInfo());
        db.close();
        return rowIDofInsertedEntry;
    }

    public static boolean deleteFrmDatabase(int rowID, Context c) {
        MyTeamDbAdapter db = new MyTeamDbAdapter(c);
        db.open();
        boolean updateStatus = db.removeEntry(rowID);
        db.close();
        return updateStatus;
    }

    public void populateArrayFromDB(Context c) {
        TeamArrayList.clear();
        MyTeamDbAdapter db = new MyTeamDbAdapter(c);
        db.open();
        Cursor cur = db.retrieveAllEntriesCursor();
        if(cur.getCount()>0) {
            cur.moveToFirst();
            do {
                int rowID = cur.getInt(MyTeamDbAdapter.COLUMN_KEY_ID);
                String teamName = cur.getString(MyTeamDbAdapter.COLUMN_TEAM_NAME);
                String teamSport = cur.getString(MyTeamDbAdapter.COLUMN_TEAM_SPORT);
                String leader = cur.getString(MyTeamDbAdapter.COLUMN_LEADER);
                String location = cur.getString(MyTeamDbAdapter.COLUMN_LOCATION);
                String info = cur.getString(MyTeamDbAdapter.COLUMN_INFO_ID);
                Data team = new Data(rowID, teamName, teamSport, leader, location, info);
                TeamArrayList.add(team);
            } while (cur.moveToNext());
        }

        db.close();
    }
}

