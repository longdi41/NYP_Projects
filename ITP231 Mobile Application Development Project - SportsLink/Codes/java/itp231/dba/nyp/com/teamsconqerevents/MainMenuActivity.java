package itp231.dba.nyp.com.teamsconqerevents;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.NewsFeed;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.NewsFeedListAdapter;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.NewsInstance;

public class MainMenuActivity extends AppCompatActivity {
    ListView MyNewsLV;
    ArrayList<NewsFeed> newsArray;
    NewsInstance na;
    public int NewsselectedItem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_menu);

        // Toolbar Settings for create events
        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.app_name);
            setSupportActionBar(toolbar);
        }

        MyNewsLV = (ListView) findViewById(R.id.MyNewsLV);
        registerForContextMenu(MyNewsLV);

        na = NewsInstance.getInstance();
        na.populateArrayFromDatabase(getApplicationContext());
        newsArray = na.getArray();
        NewsFeedListAdapter newsAdapter = new NewsFeedListAdapter(getApplicationContext(), newsArray);
        MyNewsLV.setAdapter(newsAdapter);
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        menu.add(1,100,100,"Delete this newsfeed");
    }

    public boolean onContextItemSelected(MenuItem item) {
        AdapterView.AdapterContextMenuInfo menuInfo = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
        NewsselectedItem = menuInfo.position;

        NewsFeed n = newsArray.get(NewsselectedItem);

        switch(item.getItemId())
        {
            case 100:
                // Delete Events
                AlertDialog.Builder deleteDialogBuilder = new AlertDialog.Builder(this);
                deleteDialogBuilder.setMessage("Are you sure you want to delete this newsfeed?")
                        .setNegativeButton("Yes", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                NewsFeedListAdapter newsAdapter = new NewsFeedListAdapter(getApplicationContext(), newsArray);
                                MyNewsLV.setAdapter(newsAdapter);
                                newsAdapter.notifyDataSetChanged();

                                NewsInstance na = NewsInstance.getInstance();

                                int newsId = na.getArray().get(NewsselectedItem).getId();
                                NewsInstance.deleteFrmDatabase(newsId, getApplicationContext());
                                na.populateArrayFromDatabase(getApplicationContext());

                                Toast.makeText(getApplicationContext(), "Deleted", Toast.LENGTH_LONG).show();
                            }
                        })

                        .setPositiveButton("No", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id){
                                // No Action
                            }
                        });


                // Create the AlertDialog object and return it
                AlertDialog alertDialog = deleteDialogBuilder.create();
                alertDialog.show();
                break;

        }

        return true;
    }

    public void MainToEventsPage(View v) {
        Intent EventsIntent = new Intent(this, EventsActivity.class);
        startActivity(EventsIntent);
    }

    public void MainToSignOut(View v) {
        Intent SignOut = new Intent(this, LoginActivity.class);
        startActivity(SignOut);
        finish();
    }

    public void MainToLeaderboard(View v) {
        Intent LeaderBoardIntent = new Intent(this, LeaderBoardMainActivity.class);
        startActivity(LeaderBoardIntent);
    }

    public void MainToTeam(View v) {
        Intent TeamIntent = new Intent(this, Create.class);
        startActivity(TeamIntent);
    }

    public void MainToInfo(View v) {
        Intent TeamIntent = new Intent(this, InformationPage.class);
        startActivity(TeamIntent);
    }

//    public void MainToCharts(View v) {
//        Intent ChartsIntent = new Intent(this, chartsPage.class);
//        startActivity(ChartsIntent);
//    }

    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.viewProfile) {
            Intent GoToMyProfile = new Intent(getApplication(), DisplayProfileActivity.class);
            startActivity(GoToMyProfile);
        }

        return true;
    }

}
