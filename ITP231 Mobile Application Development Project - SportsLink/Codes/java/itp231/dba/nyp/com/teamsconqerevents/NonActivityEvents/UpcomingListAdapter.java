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
 * Created by Jun Long on 6/6/2016.
 */
public class UpcomingListAdapter extends ArrayAdapter<AutoEvents> {
    private final Context context;
    private ArrayList<AutoEvents> eventslist;

    // Constructor
    public UpcomingListAdapter(Context context, ArrayList objects) {
        super(context, R.layout.upcominglistitem, objects);

        this.eventslist = objects;
        this.context = context;
    }

    // Implement Methods (Called everytime the row of data is being displayed)
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) this.context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View rowView = inflater.inflate(R.layout.upcominglistitem, parent, false);

        TextView event_name = (TextView) rowView.findViewById(R.id.TVuevent_name);
        TextView date = (TextView) rowView.findViewById(R.id.TVudate);
        TextView time = (TextView) rowView.findViewById(R.id.TVutime);
        TextView description = (TextView) rowView.findViewById(R.id.TVudescription);

        if (eventslist!=null) {
            event_name.setText(eventslist.get(position).getEventName());

            date.setText(""+eventslist.get(position).getEventDate());

            time.setText(""+eventslist.get(position).getEventTime());

            description.setText(""+eventslist.get(position).getDescription());
        }
        return rowView;
    }

}
