package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.Database.MyTeamDbAdapter;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.CreateTeamsApp;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.Data;

public class ListviewDb extends AppCompatActivity {
    Context myContext;
    TextView noitemsTV;
    ListView teamLV;
    ArrayAdapter<Data> teamAdapter;
    ArrayList<Data> newArray = new ArrayList<Data>();
    CreateTeamsApp teamApp;
    MyTeamDbAdapter database;
    String create;
    EditText edit;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview_db);

        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.teams);
            setSupportActionBar(toolbar);
        }

        myContext = this;
        noitemsTV = (TextView) findViewById(R.id.noitemsTV);
        teamLV = (ListView) findViewById(R.id.teamLV);

        registerForContextMenu(teamLV);

        teamApp = CreateTeamsApp.getInstance();

        database = new MyTeamDbAdapter(this);
    }



    private void toggleVisibility() {

        if (teamLV.getCount() > 0) {
            noitemsTV.setVisibility(View.GONE);
            teamLV.setVisibility(View.VISIBLE);
        } else {
            teamLV.setVisibility(View.GONE);
            noitemsTV.setVisibility(View.VISIBLE);
        }
    }

    protected void onResume() {
        // TODO Auto-generated method stub

        retrieveTeam();
        toggleVisibility();
        super.onResume();
    }

    public void onCreateContextMenu(ContextMenu menu, View v,
                                    ContextMenu.ContextMenuInfo menuInfo) {
        // TODO Auto-generated method stub
        if (v.getId() == R.id.teamLV) {
            menu.add(0, 0, 0, "Remove");
            menu.add(0, 1, 0, "Edit");
        }
        super.onCreateContextMenu(menu, v, menuInfo);
    }




    public boolean onContextItemSelected(MenuItem item) {
        if(item.getItemId() == 0) {
            AdapterView.AdapterContextMenuInfo info = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
            int id = teamApp.getArray().get(info.position).getId();
            CreateTeamsApp.deleteFrmDatabase(id, getApplicationContext());

            retrieveTeam();
            toggleVisibility();
        }

        if(item.getItemId() == 1)   {
            AdapterView.AdapterContextMenuInfo info = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
            final Data d = teamApp.getArray().get(info.position);
            final int id = d.getId();

            AlertDialog.Builder alert = new AlertDialog.Builder(ListviewDb.this);
            LayoutInflater inflater = getLayoutInflater();
            View dialogView = inflater.inflate(R.layout.activity_dialog_box, null);

            alert.setView(dialogView);


            alert.setTitle("Update Entry");

            final EditText new_teamname = (EditText)dialogView.findViewById(R.id.newteamName);
            final EditText new_sport = (EditText)dialogView.findViewById(R.id.newsport);
            final EditText new_leader = (EditText)dialogView.findViewById(R.id.newteamLeader);
            final EditText new_location = (EditText)dialogView.findViewById(R.id.newLocation);
            final EditText new_info = (EditText)dialogView.findViewById(R.id.newInfo);




            alert.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                }
            });
            alert.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    Data data = new Data(id,new_teamname.getText().toString(),new_sport.getText().toString(),new_leader.getText().toString(),new_location.getText().toString(),new_info.getText().toString());
                    database.open();
                    database.updateEntry(data);
                    database.close();
                    retrieveTeam();
                }
            });

            AlertDialog dialog = alert.create();
            dialog.show();
        }

        return super.onContextItemSelected(item);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu1, menu);
        return true;
    }
    public boolean onOptionsItemSelected(MenuItem item) {
        switch(item.getItemId()) {
            case R.id.menu_adds:
                Intent intent = new Intent(this, Create.class);
                this.startActivity(intent);
                break;
            default:
                return super.onOptionsItemSelected(item);
        }
        return true;
    }

    private void retrieveTeam(){
        teamApp.populateArrayFromDB(getApplicationContext());

        if(teamAdapter != null) {
            teamAdapter.notifyDataSetChanged();
        } else {
            teamAdapter = new ArrayAdapter<Data>(this, android.R.layout.simple_list_item_1, teamApp.getArray());
            teamLV.setAdapter(teamAdapter);
        }
    }

}

