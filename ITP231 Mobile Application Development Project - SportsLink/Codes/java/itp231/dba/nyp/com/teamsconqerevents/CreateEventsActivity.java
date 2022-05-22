package itp231.dba.nyp.com.teamsconqerevents;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Date;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsApplication;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.EventsOOP;

public class CreateEventsActivity extends ActionBarActivity {
    TextView TVdate, TVname, TVdesc;
    Spinner daySpinner;
    Spinner monthSpinner;
    Spinner yearSpinner;
    Spinner timeHourSpinner;
    Spinner timeMinuteSpinner;
    Spinner timeAmPmSpinner;
    ArrayAdapter<CharSequence> dayAdapter;
    ArrayAdapter<CharSequence> monthAdapter;
    ArrayAdapter<CharSequence> yearAdapter;
    ArrayAdapter<CharSequence> timeHourAdapter;
    ArrayAdapter<CharSequence> timeMinuteAdapter;
    ArrayAdapter<CharSequence> timeAmPmAdapter;
    Button buttonSubmit;
    EditText ETname;
    EditText ETdescription;
    EventsOOP e;
    EventsApplication ea;

    // Initialise the date and time
    int[] day = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};
    String[] month = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
    int[] year = {2016, 2017, 2018};
    int selectday = 0;
    String selectmonth = "";
    int selectyear = 0;

    int[] hours = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    String[] minutes = {"00", "15", "30", "45"};
    String[] amORpm = {"am", "pm"};
    int selecthour = 0;
    String selectminute = "";
    String selectAMorPM = "";

    String createeventname = "";
    String createdescription = "";
    String selectdate = "";
    String selecttime = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_create_events);

        // Toolbar Settings for create events
        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.create_events);
            setSupportActionBar(toolbar);
        }

        TVdate = (TextView) findViewById(R.id.TVdate);
        TVdesc = (TextView) findViewById(R.id.TVdesc);
        TVname = (TextView) findViewById(R.id.TVname);

        ETname = (EditText) findViewById(R.id.ETname);
        ETdescription = (EditText) findViewById(R.id.ETdescription);

        // Spinner
        daySpinner = (Spinner) findViewById(R.id.eventsDay);
        monthSpinner = (Spinner) findViewById(R.id.eventsMonth);
        yearSpinner = (Spinner) findViewById(R.id.eventsYear);
        timeHourSpinner = (Spinner) findViewById(R.id.eventsTimeHour);
        timeMinuteSpinner = (Spinner) findViewById(R.id.eventsTimeMinute);
        timeAmPmSpinner = (Spinner) findViewById(R.id.eventsTimeAmPm);

        dayAdapter = ArrayAdapter.createFromResource(this, R.array.day, android.R.layout.simple_spinner_dropdown_item);
        daySpinner.setAdapter(dayAdapter);

        monthAdapter = ArrayAdapter.createFromResource(this, R.array.month, android.R.layout.simple_spinner_dropdown_item);
        monthSpinner.setAdapter(monthAdapter);

        yearAdapter = ArrayAdapter.createFromResource(this, R.array.year, android.R.layout.simple_spinner_dropdown_item);
        yearSpinner.setAdapter(yearAdapter);

        timeHourAdapter = ArrayAdapter.createFromResource(this, R.array.timeHour, android.R.layout.simple_spinner_dropdown_item);
        timeHourSpinner.setAdapter(timeHourAdapter);

        timeMinuteAdapter = ArrayAdapter.createFromResource(this, R.array.timeMin, android.R.layout.simple_spinner_dropdown_item);
        timeMinuteSpinner.setAdapter(timeMinuteAdapter);

        timeAmPmAdapter = ArrayAdapter.createFromResource(this, R.array.timeAmpm, android.R.layout.simple_spinner_dropdown_item);
        timeAmPmSpinner.setAdapter(timeAmPmAdapter);

        // To select date
        daySpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
                selectday = day[arg2];
            }

            @Override
            public void onNothingSelected(AdapterView<?> arg0) {
            }
        });

        monthSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> arg4, View arg5, int arg6, long arg7) {
                selectmonth = month[arg6];
            }

            @Override
            public void onNothingSelected(AdapterView<?> arg4) {
            }
        });

        yearSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> arg8, View arg9, int arg10, long arg11) {
                selectyear = year[arg10];
            }

            @Override
            public void onNothingSelected(AdapterView<?> arg8) {
            }
        });

        // To select time
        timeHourSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> arg12, View arg13, int arg14, long arg15) {
                selecthour = hours[arg14];
            }

            @Override
            public void onNothingSelected(AdapterView<?> arg12) {
            }
        });

        timeMinuteSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> arg16, View arg17, int arg18, long arg19) {
                selectminute = minutes[arg18];
            }

            @Override
            public void onNothingSelected(AdapterView<?> arg16) {
            }
        });

        timeAmPmSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> arg20, View arg21, int arg22, long arg23) {
                selectAMorPM = amORpm[arg22];
            }

            @Override
            public void onNothingSelected(AdapterView<?> arg20) {
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.create_events_back, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.

        if (item.getItemId() == R.id.CreateEventsSubmit) {
            // Get data from name and description
            createeventname = ETname.getText().toString();
            createdescription = ETdescription.getText().toString();

            // Date that they key in
            selectdate = selectday + " " + selectmonth + " " + selectyear;
            int selectmonthNo;
            if (selectmonth.equals("Jan")) {
                selectmonthNo = 1;
            } else if (selectmonth.equals("Feb")) {
                selectmonthNo = 2;
            } else if (selectmonth.equals("Mar")) {
                selectmonthNo = 3;
            } else if (selectmonth.equals("Apr")) {
                selectmonthNo = 4;
            } else if (selectmonth.equals("May")) {
                selectmonthNo = 5;
            } else if (selectmonth.equals("Jun")) {
                selectmonthNo = 6;
            } else if (selectmonth.equals("Jul")) {
                selectmonthNo = 7;
            } else if (selectmonth.equals("Aug")) {
                selectmonthNo = 8;
            } else if (selectmonth.equals("Sep")) {
                selectmonthNo = 9;
            } else if (selectmonth.equals("Oct")) {
                selectmonthNo = 10;
            } else if (selectmonth.equals("Nov")) {
                selectmonthNo = 11;
            } else {
                selectmonthNo = 12;
            }

            selectmonthNo -= 1;

            int selectyearNo = selectyear - 1900;
            // Date1 (Validate Date)
            Date date1 = new Date(selectyearNo, selectmonthNo, selectday);

            // Time that they key in
            selecttime = selecthour + "." + selectminute + selectAMorPM;

            // Date 2 (Current Date)
            Date date2 = new Date();

            // SimpleDateFormat dfDate = new SimpleDateFormat("MM/DD/yy", Locale.ENGLISH);

            if (createeventname.equals("")) {
                AlertDialog.Builder errorDialog = new AlertDialog.Builder(CreateEventsActivity.this);
                errorDialog.setMessage("**Empty Fields Error**\n\nDetails: Event Name Empty. \n\nPlease check before submit.");

                errorDialog.setNegativeButton("Okay", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        TVname.setTextColor(Color.RED);
                    }
                });

                errorDialog.show();
            } else {
                if (createdescription.equals("")) {
                    AlertDialog.Builder errorDialog = new AlertDialog.Builder(CreateEventsActivity.this);
                    errorDialog.setMessage("**Empty Fields Error**\n\nDetails: Event Description Empty. \n\nPlease check before submit.");

                    errorDialog.setNegativeButton("Okay", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            TVdesc.setTextColor(Color.RED);
                        }
                    });

                    errorDialog.show();
                } else {
                    // Validate if the events is over
                    if (date2.after(date1)) {
                        AlertDialog.Builder errorDialog = new AlertDialog.Builder(CreateEventsActivity.this);
                        errorDialog.setMessage("**Set Date Error**\n\nDetails: The event day that you select is over the current time \n\nPlease check before submit.");

                        errorDialog.setNegativeButton("Okay", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                TVdate.setTextColor(Color.RED);
                            }
                        });

                        errorDialog.show();

                    } else {
                        AlertDialog.Builder checkDialog = new AlertDialog.Builder(CreateEventsActivity.this);
                        checkDialog.setMessage("Here are the details that you key in:\n\nEvent Name: " + createeventname + "\nEvent Date: " + selectdate + "\nEvent Time: " + selecttime + "\n\nCreate this event?");

                        checkDialog.setNegativeButton("Create", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                // set default values
                                String team1name = "Team #1";
                                String team2name = "Team #2";
                                int team1score = 0;
                                int team2score = 0;

                                e = new EventsOOP(createeventname, selectdate, selecttime, createdescription, team1name, team2name, team1score, team2score);
                                EventsApplication.addToDatabase(e, getApplicationContext());

                                Toast.makeText(getApplicationContext(), "Created", Toast.LENGTH_LONG).show();
                                Intent GoBackEventsPage = new Intent(getApplicationContext(), EventsActivity.class);
                                startActivity(GoBackEventsPage);
                                finish();
                            }
                        });

                        checkDialog.setPositiveButton("Cancel", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                Toast.makeText(getApplicationContext(), "Cancelled", Toast.LENGTH_LONG).show();
                            }
                        });

                        checkDialog.show();
                    }
                }
            }
        }

        if (item.getItemId() == R.id.CreateEventsReset) {
            ETname.setText("");
            ETdescription.setText("");
        }
        return true;
    }
}