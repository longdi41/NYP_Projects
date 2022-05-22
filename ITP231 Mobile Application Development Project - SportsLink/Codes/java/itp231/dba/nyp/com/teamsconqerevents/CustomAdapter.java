package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;

import itp231.dba.nyp.com.teamsconqerevents.TeamMainActivity;

/**
 * Created by aypro_000 on 6/28/2016.
 */
public class CustomAdapter extends BaseAdapter {

    String[] result;
    Context context;
    int[]imageId;
    private static LayoutInflater inflator=null;
    public CustomAdapter(TeamMainActivity mainActivity, String[] prgNameList, int[] prgImages) {

        result=prgNameList;
        context=mainActivity;
        imageId=prgImages;
        inflator = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }
    public int getCount() {
       return result.length;
    }
    public Object getItem(int position) {
        return position;
    }
    public long getItemId(int position) {
        return position;
    }
    public class Holder {
        TextView tv;
        ImageView img;
    }

    public View getView(final int position, View convertView, ViewGroup parent) {
        Holder holder = new Holder();
        View rowView;
            rowView = inflator.inflate(R.layout.simplerow, null);
            holder.tv=(TextView) rowView.findViewById(R.id.TV1);
            holder.img = (ImageView) rowView.findViewById(R.id.imageview1);
            holder.tv.setText(result[position]);
        holder.img.setImageResource(imageId[position]);
            return rowView;
    }
}
