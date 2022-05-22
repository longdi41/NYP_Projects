package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

/**
 * Created by shahbaz on 4/7/2016.
 */
public class Accounts {
    private int _id;
    private String _name;
    private String _email;
    private String _password;
    private String _dateOfBirth;

    public Accounts(int _id, String _name, String _email, String _password, String _dateOfBirth) {
        this._id = _id;
        this._name = _name;
        this._email = _email;
        this._password = _password;
        this._dateOfBirth = _dateOfBirth;
    }


    public Accounts(String _name, String _email, String _password, String _dateOfBirth) {
        this._name = _name;
        this._email = _email;
        this._password = _password;
        this._dateOfBirth = _dateOfBirth;
    }

    public String get_name() {
        return _name;
    }

    public void set_name(String _name) {
        this._name = _name;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public void set_email(String _email) {
        this._email = _email;
    }

    public void set_password(String _password) {
        this._password = _password;
    }

    public void set_dateOfBirth(String _dateOfBirth) {
        this._dateOfBirth = _dateOfBirth;
    }

    public int get_id() {
        return _id;
    }

    public String get_email() {
        return _email;
    }

    public String get_password() {
        return _password;
    }

    public String get_dateOfBirth() {
        return _dateOfBirth;
    }
}
