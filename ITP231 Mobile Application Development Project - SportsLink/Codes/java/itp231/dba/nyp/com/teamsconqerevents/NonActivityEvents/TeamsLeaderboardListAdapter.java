package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.R;

/**
 * Created by Jun Long on 5/8/2016.
 */
public class TeamsLeaderboardListAdapter extends ArrayAdapter<Scores> {
    private final Context context;
    private ArrayList<Scores> scoreslist;

    // Constructor
    public TeamsLeaderboardListAdapter(Context context, ArrayList objects) {
        super(context, R.layout.scoreslistitem, objects);

        this.scoreslist = objects;
        this.context = context;
    }

    // Implement Methods (Called everytime the row of data is being displayed)
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) this.context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View rowView = inflater.inflate(R.layout.scoreslistitem, parent, false);

        TextView eventsId = (TextView) rowView.findViewById(R.id.LBeventId);
        TextView teamsId = (TextView) rowView.findViewById(R.id.LBteamId);
        TextView scores = (TextView) rowView.findViewById(R.id.LBscores);

        if (scoreslist!=null) {
            eventsId.setText(scoreslist.get(position).getEventId());
            teamsId.setText("" + scoreslist.get(position).getTeamId());
            scores.setText("" + scoreslist.get(position).getScore());
        }
        return rowView;
    }
}

