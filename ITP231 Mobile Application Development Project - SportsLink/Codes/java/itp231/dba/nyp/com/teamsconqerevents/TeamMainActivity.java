package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ListView;
import android.widget.TextView;

import itp231.dba.nyp.com.teamsconqerevents.Database.MyTeamDbAdapter;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.CreateTeamsApp;

public class TeamMainActivity extends AppCompatActivity {
    TextView name;
    TextView about;
    TextView sport;
    TextView location;
    MyTeamDbAdapter database;

    CreateTeamsApp teamApp;
    ListView teamLV;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Toolbar Settings for create events
        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.teams);
            setSupportActionBar(toolbar);
        }

        name = (TextView) findViewById(R.id.name);
        about = (TextView) findViewById(R.id.about);
        sport = (TextView) findViewById(R.id.sport);
        location = (TextView)findViewById(R.id.location);
        teamLV = (ListView) findViewById(R.id.teamLV);
        teamApp = CreateTeamsApp.getInstance();

        name.setText(getIntent().getStringExtra("name"));
        about.setText(getIntent().getStringExtra("info"));
        sport.setText("We play " + getIntent().getStringExtra("sport") + "!");
        location.setText("We are now at " + getIntent().getStringExtra("location") + "!");

        database = new MyTeamDbAdapter(this);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }
    public boolean onOptionsItemSelected(MenuItem item) {
        switch(item.getItemId()) {
            case R.id.menu_add:
                Intent intent = new Intent(this, Create.class);
                this.startActivity(intent);
                break;
            case R.id.list_view:
                Intent intent2 = new Intent(this, ListviewDb.class);
                this.startActivity(intent2);
            default:

                return super.onOptionsItemSelected(item);
        }
        return true;
    }




}