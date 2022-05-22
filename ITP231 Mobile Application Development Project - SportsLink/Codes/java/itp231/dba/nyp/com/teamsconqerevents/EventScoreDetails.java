package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsOOP;

public class EventScoreDetails extends AppCompatActivity {
    TextView TVEventName;
    TextView TVEventDate;
    TextView TVEventTime;
    TextView TVDescription;
    TextView TVTeamOneName;
    TextView TVTeamTwoName;
    TextView TVTeamOneScore;
    TextView TVTeamTwoScore;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_event_score_details);

        // Toolbar Settings for create events
        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.events_details);
            setSupportActionBar(toolbar);
        }

        TVEventName = (TextView) findViewById(R.id.TVDetailsEventsName);
        TVEventDate = (TextView) findViewById(R.id.TVDetailsEventsDate);
        TVEventTime = (TextView) findViewById(R.id.TVDetailsEventsTime);
        TVDescription = (TextView) findViewById(R.id.TVDetailsDescription);
        TVTeamOneName = (TextView) findViewById(R.id.TVDetailsTeamOneName);
        TVTeamTwoName = (TextView) findViewById(R.id.TVDetailsTeamTwoName);
        TVTeamOneScore = (TextView) findViewById(R.id.TVDetailsTeamOneScore);
        TVTeamTwoScore = (TextView) findViewById(R.id.TVDetailsTeamTwoScore);

        int defaultIntValue = 0;
        Intent receivingIntent = getIntent();
        String EventName = receivingIntent.getStringExtra(EventsOOP.INTENT_NAME_EVENTNAME);
        String Description = receivingIntent.getStringExtra(EventsOOP.INTENT_NAME_DESCRIPTION);
        String EventDate = receivingIntent.getStringExtra(EventsOOP.INTENT_NAME_EVENTDATE);
        String EventTime = receivingIntent.getStringExtra(EventsOOP.INTENT_NAME_EVENTTIME);
        String TeamOneName = receivingIntent.getStringExtra(EventsOOP.INTENT_NAME_TEAM1ID);
        String TeamTwoName = receivingIntent.getStringExtra(EventsOOP.INTENT_NAME_TEAM2ID);
        int TeamOneScore = receivingIntent.getIntExtra(EventsOOP.INTENT_NAME_TEAM1SCORE, defaultIntValue);
        int TeamTwoScore = receivingIntent.getIntExtra(EventsOOP.INTENT_NAME_TEAM2SCORE, defaultIntValue);

        TVEventName.setText(EventName);
        TVEventDate.setText(EventDate);
        TVEventTime.setText(EventTime);
        TVDescription.setText(Description);
        TVTeamOneName.setText(TeamOneName);
        TVTeamTwoName.setText(TeamTwoName);
        TVTeamOneScore.setText(String.valueOf(TeamOneScore));
        TVTeamTwoScore.setText(String.valueOf(TeamTwoScore));
    }
}
