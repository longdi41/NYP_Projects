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
 * Created by Jun Long on 25/7/2016.
 */
public class NewsFeedListAdapter extends ArrayAdapter<NewsFeed> {
    private final Context context;
    private ArrayList<NewsFeed> newslist;

    // Constructor
    public NewsFeedListAdapter(Context context, ArrayList objects) {
        super(context, R.layout.listitem, objects);

        this.newslist = objects;
        this.context = context;
    }

    // Implement Methods (Called everytime the row of data is being displayed)
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) this.context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View rowView = inflater.inflate(R.layout.newslistitem, parent, false);

        TextView TVnews = (TextView) rowView.findViewById(R.id.newsno);

        if (newslist!=null) {
            TVnews.setText(newslist.get(position).getNews());
        }
        return rowView;
    }
}
