package itp231.dba.nyp.com.teamsconqerevents.TwoTabsEvents;

import android.content.DialogInterface;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.AutoEvents;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsApplication;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsOOP;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.UpcomingApplication;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.UpcomingListAdapter;
import itp231.dba.nyp.com.teamsconqerevents.R;

public class UpcomingActivity extends Fragment {
    ArrayList<AutoEvents> eventsArray;
    public int selectedItem;
    UpcomingApplication ua;
    ListView MyUpcomingLV;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View v =inflater.inflate(R.layout.activity_upcoming,container,false);
        MyUpcomingLV = (ListView) v.findViewById(R.id.MyUpcomingLV);
        //registerForContextMenu(MyUpcomingLV);

        // To get events item on list item
        ua = UpcomingApplication.getInstance();
        // Retrieve
        ua.populateArrayFromDatabase(getActivity().getApplicationContext());
        eventsArray = ua.getArray();
        // List View Adapter
        UpcomingListAdapter scoresAdapter = new UpcomingListAdapter(getActivity().getApplicationContext(), eventsArray);
        MyUpcomingLV.setAdapter(scoresAdapter);

        return v;

    }
/*
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        menu.add(1,1,1,"Join");
    }

    public boolean onContextItemSelected(MenuItem item) {
        AdapterView.AdapterContextMenuInfo menuInfo = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
        selectedItem = menuInfo.position;

        switch(item.getItemId()) {
            case 1:
                // Delete Events
                AlertDialog.Builder joinDialogBuilder = new AlertDialog.Builder(getActivity());
                joinDialogBuilder.setMessage("Are you sure you want to join?'")
                        .setNegativeButton("Join", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {

                                Toast.makeText(getActivity().getApplicationContext(), "Joined", Toast.LENGTH_LONG).show();
                            }
                        });


                // Create the AlertDialog object and return it
                AlertDialog alertDialog = joinDialogBuilder.create();
                alertDialog.show();
                break;
        }
        return true;
    }
    */
}
