package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import org.w3c.dom.Text;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.R;

/**
 * Created by Jun Long on 6/6/2016.
 */
public class MyEventsListAdapter extends ArrayAdapter<EventsOOP> {
    private final Context context;
    private ArrayList<EventsOOP> eventslist;

    // Constructor
    public MyEventsListAdapter(Context context, ArrayList objects) {
        super(context, R.layout.listitem, objects);

        this.eventslist = objects;
        this.context = context;
    }

    // Implement Methods (Called everytime the row of data is being displayed)
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) this.context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View rowView = inflater.inflate(R.layout.listitem, parent, false);

        TextView event_name = (TextView) rowView.findViewById(R.id.TVevent_name);
        TextView date = (TextView) rowView.findViewById(R.id.TVdate);
        TextView time = (TextView) rowView.findViewById(R.id.TVtime);
        TextView description = (TextView) rowView.findViewById(R.id.TVdescription);

        if (eventslist!=null) {
            event_name.setText(eventslist.get(position).getEventName());

            date.setText(""+eventslist.get(position).getEventDate());

            time.setText(""+eventslist.get(position).getEventTime());

            description.setText(""+eventslist.get(position).getDescription());
        }
        return rowView;
    }

}
