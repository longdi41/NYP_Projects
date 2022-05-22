package itp231.dba.nyp.com.teamsconqerevents.TwoTabsEvents;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
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

import itp231.dba.nyp.com.teamsconqerevents.EditEventsActivity;
import itp231.dba.nyp.com.teamsconqerevents.EventScoreDetails;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsApplication;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsOOP;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.MyEventsListAdapter;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.NewsFeed;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.NewsInstance;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.ScoreApp;
import itp231.dba.nyp.com.teamsconqerevents.R;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.Scores;
import itp231.dba.nyp.com.teamsconqerevents.ScoresTrackerActivity;

public class MyEventsActivity extends Fragment {
    ArrayList<EventsOOP> eventsArray;
    public int selectedItem;
    EventsApplication ea;
    ListView MyEventsLV;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View v =inflater.inflate(R.layout.activity_my_events,container,false);
        MyEventsLV = (ListView) v.findViewById(R.id.MyEventsLV);
        registerForContextMenu(MyEventsLV);

        // populateArray();

        // To get events item on list item
        ea = EventsApplication.getInstance();
        // Retrieve
        ea.populateArrayFromDatabase(getActivity().getApplicationContext());
        eventsArray = ea.getArray();
        // List View Adapter
        MyEventsListAdapter eventsAdapter = new MyEventsListAdapter(getActivity().getApplicationContext(), eventsArray);
        MyEventsLV.setAdapter(eventsAdapter);

        MyEventsLV.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
                EventsOOP e = eventsArray.get(arg2);

                Intent ReadDetailsIntent = new Intent(getActivity().getApplicationContext(), EventScoreDetails.class);
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_EVENTNAME, e.getEventName());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_DESCRIPTION, e.getDescription());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_EVENTDATE, e.getEventDate());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_EVENTTIME, e.getEventTime());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_TEAM1ID, e.getTeam1id());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_TEAM2ID, e.getTeam2id());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_TEAM1SCORE, e.getTeam1scores());
                ReadDetailsIntent.putExtra(EventsOOP.INTENT_NAME_TEAM2SCORE, e.getTeam2scores());
                startActivity(ReadDetailsIntent);
            }
        });

        return v;
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        menu.add(1,1,1,"Edit this event");
        menu.add(1,2,2,"Delete this event");
        menu.add(1,3,3,"Key in scores");
        menu.add(1,4,4,"Confirm this event");
    }

    public boolean onContextItemSelected(MenuItem item) {
        AdapterView.AdapterContextMenuInfo menuInfo = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
        selectedItem = menuInfo.position;

        EventsOOP e = eventsArray.get(selectedItem);

        switch(item.getItemId())
        {
            case 1:
                // Edit Events
                Intent EditEvents = new Intent(getActivity().getApplicationContext(), EditEventsActivity.class);
                EditEvents.putExtra(EventsOOP.INTENT_NAME_ARRAY_ITEM, selectedItem);
                startActivity(EditEvents);
                break;

            case 2:
                // Delete Events
                AlertDialog.Builder deleteDialogBuilder = new AlertDialog.Builder(getActivity());
                deleteDialogBuilder.setMessage("Delete '" + e.getEventName() + "'")
                        .setNegativeButton("Delete", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                MyEventsListAdapter eventsAdapter = new MyEventsListAdapter(getActivity().getApplicationContext(), eventsArray);
                                MyEventsLV.setAdapter(eventsAdapter);
                                eventsAdapter.notifyDataSetChanged();

                                EventsApplication sa = EventsApplication.getInstance();

                                int eventsId = sa.getArray().get(selectedItem).getId();
                                EventsApplication.deleteFrmDatabase(eventsId, getActivity().getApplicationContext());
                                sa.populateArrayFromDatabase(getActivity().getApplicationContext());

                                Toast.makeText(getActivity().getApplicationContext(), "Deleted", Toast.LENGTH_LONG).show();
                            }
                        })

                        .setPositiveButton("Cancel", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id){
                                Toast.makeText(getActivity().getApplicationContext(), "Cancelled", Toast.LENGTH_LONG).show();
                            }
                        });


                // Create the AlertDialog object and return it
                AlertDialog alertDialog = deleteDialogBuilder.create();
                alertDialog.show();
                break;

            case 3:
                // Key in Scores
                Intent GoToKeyIn = new Intent(getActivity().getApplicationContext(), ScoresTrackerActivity.class);
                GoToKeyIn.putExtra(EventsOOP.INTENT_NAME_ARRAY_ITEM, selectedItem);
                startActivity(GoToKeyIn);
                break;

            case 4:
                // Confirm this event
                AlertDialog.Builder newsDialogBuilder = new AlertDialog.Builder(getActivity());
                newsDialogBuilder.setMessage("Confirm the scores in '" + e.getEventName() + "' event?\n\nNote:\n1. The scores will be feature on the newsfeed\n2.This event will not be appeared on the events again.\n\nDo you wish to to confirm?")
                        .setNegativeButton("Yes", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                EventsOOP ne = eventsArray.get(selectedItem);

                                String summaryTeamOne = ne.getTeam1id();
                                String summaryTeamTwo = ne.getTeam2id();
                                int summaryTeamOneScores = ne.getTeam1scores();
                                int summaryTeamTwoScores = ne.getTeam2scores();
                                String eventName = ne.getEventName();

                                // Add to Leaderboard Database
                                Scores sT1 = new Scores(eventName, summaryTeamOne, summaryTeamOneScores);
                                Scores sT2 = new Scores(eventName, summaryTeamTwo, summaryTeamTwoScores);
                                ScoreApp.addToDatabase(sT1, getActivity().getApplicationContext());
                                ScoreApp.addToDatabase(sT2, getActivity().getApplicationContext());

                                // Add to Newsfeed Database
                                String news = "";

                                if (summaryTeamOneScores > summaryTeamTwoScores) {
                                    news = summaryTeamOne + " wins " + summaryTeamTwo + " in " + eventName + " with " + summaryTeamOneScores + "-" + summaryTeamTwoScores;
                                }
                                else if (summaryTeamOneScores == summaryTeamTwoScores) {
                                    news = summaryTeamOne + " and " + summaryTeamTwo + " are tie-breakers in " + eventName + " with " + summaryTeamOneScores + " points!";
                                }
                                else {
                                    news = summaryTeamTwo + " wins " + summaryTeamOne + " in " + eventName + " with " + summaryTeamTwoScores + "-" + summaryTeamOneScores;
                                }

                                NewsFeed n = new NewsFeed(news);

                                NewsInstance.addToDatabase(n, getActivity().getApplicationContext());

                                Toast.makeText(getActivity().getApplicationContext(), "Confirmed", Toast.LENGTH_LONG).show();

                                MyEventsListAdapter eventsAdapter = new MyEventsListAdapter(getActivity().getApplicationContext(), eventsArray);
                                MyEventsLV.setAdapter(eventsAdapter);
                                eventsAdapter.notifyDataSetChanged();

                                EventsApplication sa = EventsApplication.getInstance();

                                int eventsId = sa.getArray().get(selectedItem).getId();
                                EventsApplication.deleteFrmDatabase(eventsId, getActivity().getApplicationContext());
                                sa.populateArrayFromDatabase(getActivity().getApplicationContext());
                            }
                        })

                        .setPositiveButton("No", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id){
                                // Never do anything
                            }
                        });


                // Create the AlertDialog object and return it
                AlertDialog newsDialog = newsDialogBuilder.create();
                newsDialog.show();
                break;
        }

        return true;
    }
}
