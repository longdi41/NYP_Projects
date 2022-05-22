package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.CreateTeamsApp;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.Data;

public class Create extends AppCompatActivity {
    EditText etTeamName;
    EditText etTeamSport;
    EditText etTeamLeader;
    EditText etLocation;
    EditText etInfo;
    Button btnCreate;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_create);

        etTeamName = (EditText) findViewById(R.id.teamName);
        etTeamSport = (EditText) findViewById(R.id.sport);
        etTeamLeader = (EditText) findViewById(R.id.leader);
        etLocation = (EditText) findViewById(R.id.location);
        etInfo = (EditText) findViewById(R.id.info);
        btnCreate = (Button) findViewById(R.id.btnCreate);

        btnCreate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String addNameStr = etTeamName.getText().toString();
                String addSportStr = etTeamSport.getText().toString();
                String addLeaderStr = etTeamLeader.getText().toString();
                String addLocationStr = etLocation.getText().toString();
                String addInfoStr = etInfo.getText().toString();
                Data team = new Data(addNameStr, addSportStr, addLeaderStr, addLocationStr, addInfoStr);

                CreateTeamsApp.addToDatabase(team, getApplicationContext());
                Intent i = new Intent(Create.this, TeamMainActivity.class);
                i.putExtra("name", addNameStr);
                i.putExtra("sport", addSportStr);
                i.putExtra("leader", addLeaderStr);
                i.putExtra("location", addLocationStr);
                i.putExtra("info", addInfoStr);
                startActivity(i);
            }
        });

    }

}


