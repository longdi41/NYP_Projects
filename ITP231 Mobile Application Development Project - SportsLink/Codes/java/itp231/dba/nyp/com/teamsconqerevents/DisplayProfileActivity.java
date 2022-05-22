package itp231.dba.nyp.com.teamsconqerevents;

import android.database.Cursor;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import itp231.dba.nyp.com.teamsconqerevents.Database.DisplayDatabase;

public class DisplayProfileActivity extends AppCompatActivity {
    EditText etName, etGender, etDate, etHome, etAbout;
    Button btnCreate, btnUpdate, btnRetrieve;


    //create database attribute
    DisplayDatabase myDb;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display_profile);

        //create database
        myDb = new DisplayDatabase(this);
        etName = (EditText) findViewById(R.id.etName);
        etGender = (EditText) findViewById(R.id.etGender);
        etDate = (EditText) findViewById(R.id.etDate);
        etHome = (EditText) findViewById(R.id.etHome);
        etAbout = (EditText) findViewById(R.id.etAbout);
        btnCreate = (Button) findViewById(R.id.btnCreate);
        btnUpdate = (Button) findViewById(R.id.btnUpdate);
        btnRetrieve = (Button) findViewById(R.id.btnRetrieve);

        addData();
        viewAll();
        UpdateData();


    }

    public void UpdateData() {
        btnUpdate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                boolean isUpdate = myDb.updateData(etName.getText().toString(), etGender.getText().toString(), etDate.getText().toString(), etHome.getText().toString(), etAbout.getText().toString());
                if (isUpdate == true)
                    Toast.makeText(DisplayProfileActivity.this, "Data Updated", Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(DisplayProfileActivity.this, "Data not Updated", Toast.LENGTH_LONG).show();
            }
        });
    }

    public void addData() {
        btnCreate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                boolean isInserted = myDb.insertData(etName.getText().toString(), etGender.getText().toString(), etDate.getText().toString(), etHome.getText().toString(), etAbout.getText().toString());
                if (isInserted == true)
                    Toast.makeText(DisplayProfileActivity.this, "Data Inserted", Toast.LENGTH_LONG).show();
                else
                    Toast.makeText(DisplayProfileActivity.this, "Data not inserted", Toast.LENGTH_LONG).show();
            }
        });
    }

    public void viewAll() {
        btnRetrieve.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Cursor res = myDb.getAllData();
                // to check data if read
                if (res.getCount() == 0) {
                    // show message of data
                    showMessage("Error", "Nothing Found");
                    return;
                }
                StringBuffer buffer = new StringBuffer();
                while (res.moveToNext()) {
                    buffer.append("Name : " + res.getString(1) + "\n");
                    buffer.append("Gender : " + res.getString(2) + "\n");
                    buffer.append("Date : " + res.getString(3) + "\n");
                    buffer.append("Hometown : " + res.getString(4) + "\n");
                    buffer.append("About You : " + res.getString(5) + "\n\n");

                }
                // show all data
                showMessage("Data", buffer.toString());
            }
        });

    }

    // show message alert
    public void showMessage(String title, String Message) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setCancelable(true);
        builder.setTitle(title);
        builder.setMessage(Message);
        builder.show();
    }
}

