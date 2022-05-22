package itp231.dba.nyp.com.teamsconqerevents;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import itp231.dba.nyp.com.teamsconqerevents.Database.AccountsDatabase;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.Accounts;
import itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents.ControlAccountDatabase;

public class CreateMainActivity extends AppCompatActivity {

    EditText etSUName, etSUEmail, etSUPw, etSUDob;
    Button btnCreate, btnBack;


    //create database attribute
    AccountsDatabase myDb;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_create);

        //create database
        myDb = new AccountsDatabase(this);

        etSUName = (EditText) findViewById(R.id.etSUName);
        etSUEmail = (EditText) findViewById(R.id.etSUEmail);
        etSUPw = (EditText) findViewById(R.id.etSUPw);
        etSUDob = (EditText) findViewById(R.id.etSUDob);
        btnCreate = (Button) findViewById(R.id.btnCreate);
        btnBack = (Button) findViewById(R.id.btnBack);

        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(CreateMainActivity.this, LoginActivity.class);
                startActivity(intent);
            }
        });

        btnCreate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name = etSUName.getText().toString();
                String email = etSUEmail.getText().toString();
                String password = etSUPw.getText().toString();
                String dob = etSUDob.getText().toString();

                Accounts a = new Accounts(name, email, password, dob);
                ControlAccountDatabase.addToDatabase(a, getApplicationContext());

                Toast.makeText(getApplicationContext(), "Created", Toast.LENGTH_LONG).show();

                Intent GoBackToLoginActivity = new Intent(getApplicationContext(), LoginActivity.class);
                startActivity(GoBackToLoginActivity);
                finish();
            }
        });
    }
}

