package itp231.dba.nyp.com.teamsconqerevents;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.ControlAccountDatabase;

public class LoginActivity extends AppCompatActivity {
    Button signUp,addButton;
    EditText USERNAME,USERPASS;
    //LoginApp loginApp;
    TextView TVmessage;
    ControlAccountDatabase ca;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        signUp = (Button) findViewById(R.id.signUp);
        addButton = (Button) findViewById(R.id.addButton);
        USERNAME = (EditText) findViewById(R.id.un_S);
        USERPASS = (EditText) findViewById(R.id.pass_S);
        TVmessage = (TextView) findViewById(R.id.TVmessage);

        Toolbar toolbar = (Toolbar) findViewById(R.id.tool_bar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.app_name);
            setSupportActionBar(toolbar);
        }

        signUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(LoginActivity.this, CreateMainActivity.class);
                startActivity(intent);

            }
        });

        addButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Get the things that they key in
                String username = USERNAME.getText().toString();
                String password = USERPASS.getText().toString();

                ca = ControlAccountDatabase.getInstance();
                String message = ca.populateArrayFromDB(getApplicationContext(), username, password);

                if (message.equals("success")) {
                    Intent myIntent = new Intent(getApplicationContext(), MainMenuActivity.class);
                    startActivity(myIntent);
                }
                else {
                    Toast.makeText(getApplicationContext(), message, Toast.LENGTH_LONG).show();
                }

            }
        });
/*
        addButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                loginApp = LoginApp.getInstance();
                loginApp.populateArrayFromDB(getApplicationContext());

                ArrayList<Accounts> accountArray = loginApp.getArray();

                String keyinusername = USERNAME.getText().toString();
                String keyinpassword = USERPASS.getText().toString();

                for (int i = 0; i < accountArray.size(); i++) {
                    if ((accountArray.get(i).get_email()).equals(keyinusername)) {
                        if ((accountArray.get(i).get_password().equals(keyinpassword))) {
                            TVmessage.setText("Password Correct");
                        }
                        else {
                            TVmessage.setText("Password Wrong");
                        }
                    }
                }

                if (TVmessage.getText() == "") {
                    TVmessage.setText("Account Not Found");
                }
            }
        });

*/

    }


}


