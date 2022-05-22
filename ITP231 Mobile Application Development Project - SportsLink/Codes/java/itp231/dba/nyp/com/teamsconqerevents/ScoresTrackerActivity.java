package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsApplication;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsOOP;

public class ScoresTrackerActivity extends AppCompatActivity {
    EditText ETteam1score;
    EditText ETteam2score;
    Button SubmitScores;
    EventsApplication ea;
    int selectedItem;

    String EventName;
    String EventDate;
    String EventTime;
    String Description;
    String team1id;
    String team2id;

    TextView TVEventName, TVFirstTeam, TVSecondTeam;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_scores_tracker);

        ea = EventsApplication.getInstance();
        // Receiving Intents
        Intent receivingIntent = getIntent();
        selectedItem = receivingIntent.getIntExtra(EventsOOP.INTENT_NAME_ARRAY_ITEM, 0);
        EventsOOP e = ea.getArray().get(selectedItem);

        ETteam1score = (EditText) findViewById(R.id.ETteam1score);
        ETteam2score = (EditText) findViewById(R.id.ETteam2score);
        SubmitScores = (Button) findViewById(R.id.buttonSubmitScores);

        TVEventName = (TextView) findViewById(R.id.TVeventName);
        TVFirstTeam = (TextView) findViewById(R.id.TVfirstTeam);
        TVSecondTeam = (TextView) findViewById(R.id.TVsecondTeam);

        // Toolbar Settings for create events
        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.key_in_scores);
            setSupportActionBar(toolbar);
        }

        // Initalise the update scores
        ETteam1score.setText(String.valueOf(e.getTeam1scores()));
        ETteam2score.setText(String.valueOf(e.getTeam2scores()));

        EventName = e.getEventName();
        EventDate = e.getEventDate();
        EventTime = e.getEventTime();
        Description = e.getDescription();
        team1id = e.getTeam1id();
        team2id = e.getTeam2id();

        TVEventName.setText(EventName);
        TVFirstTeam.setText(team1id);
        TVSecondTeam.setText(team2id);

        SubmitScores.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int updateTeam1scores = Integer.parseInt(ETteam1score.getText().toString());
                int updateTeam2scores = Integer.parseInt(ETteam2score.getText().toString());

                EventsOOP e;
                e = new EventsOOP(EventName, EventDate, EventTime, Description, team1id, team2id, updateTeam1scores, updateTeam2scores);
                int eventsID = ea.getArray().get(selectedItem).getId();
                EventsApplication.updateDatabase(e, eventsID, getApplicationContext());

                Intent GoBackToEventsPage = new Intent(getApplicationContext(), EventsActivity.class);
                startActivity(GoBackToEventsPage);
            }
        });
    }
}
