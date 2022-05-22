package itp231.dba.nyp.com.teamsconqerevents;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.ScoreApp;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.Scores;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.TeamsLeaderboardListAdapter;

/**
 * Created by Ariel on 25/7/2016.
 */
public class LeaderBoardMainActivity extends AppCompatActivity{
    ListView scoreLV;
    ArrayList<Scores> scoresArray;
    ScoreApp sa;
    int selectedItem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_leader_board_main);

        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.leaderboard_menu);
            setSupportActionBar(toolbar);
        }

        scoreLV = (ListView) findViewById(R.id.scoreLV);
        registerForContextMenu(scoreLV);

        sa = ScoreApp.getInstance();
        sa.populateArrayFromDB(getApplicationContext());
        scoresArray = sa.getArray();
        TeamsLeaderboardListAdapter scoresAdapter = new TeamsLeaderboardListAdapter(this, scoresArray);
        scoreLV.setAdapter(scoresAdapter);
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        menu.add(1,1,1,"Delete");
    }

    public boolean onContextItemSelected(MenuItem item) {
        AdapterView.AdapterContextMenuInfo menuInfo = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
        selectedItem = menuInfo.position;

        Scores s = scoresArray.get(selectedItem);

        switch(item.getItemId())
        {
            case 1:
                // Delete
                AlertDialog.Builder deleteDialogBuilder = new AlertDialog.Builder(this);
                deleteDialogBuilder.setMessage("Delete?")
                        .setNegativeButton("Delete", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                TeamsLeaderboardListAdapter scoresAdapter = new TeamsLeaderboardListAdapter(getApplicationContext(), scoresArray);
                                scoreLV.setAdapter(scoresAdapter);
                                scoresAdapter.notifyDataSetChanged();;

                                ScoreApp sa = ScoreApp.getInstance();

                                int scoresId = sa.getArray().get(selectedItem).getId();
                                ScoreApp.deleteFrmDatabase(scoresId, getApplicationContext());
                                sa.populateArrayFromDB(getApplicationContext());

                                Toast.makeText(getApplicationContext(), "Deleted", Toast.LENGTH_LONG).show();
                            }
                        })

                        .setPositiveButton("Cancel", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id){
                                Toast.makeText(getApplicationContext(), "Cancelled", Toast.LENGTH_LONG).show();
                            }
                        });


                // Create the AlertDialog object and return it
                AlertDialog alertDialog = deleteDialogBuilder.create();
                alertDialog.show();
                break;
        }

        return true;
    }

}
