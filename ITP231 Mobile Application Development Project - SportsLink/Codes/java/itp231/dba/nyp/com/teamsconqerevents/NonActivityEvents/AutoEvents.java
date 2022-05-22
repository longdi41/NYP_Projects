package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

/**
 * Created by Jun Long on 6/6/2016.
 */
public class AutoEvents {

    private int id;
    private String EventName;
    private String EventDate;
    private String EventTime;
    private String Description;

    // From teams
    private String team1id;
    private String team2id;

    public AutoEvents(String eventName, String eventDate, String eventTime, String description, String team1id, String team2id) {
        EventName = eventName;
        EventDate = eventDate;
        EventTime = eventTime;
        Description = description;
        this.team1id = team1id;
        this.team2id = team2id;
    }

    public AutoEvents(int id, String eventName, String eventDate, String eventTime, String description, String team1id, String team2id) {
        this.id = id;
        EventName = eventName;
        EventDate = eventDate;
        EventTime = eventTime;
        Description = description;
        this.team1id = team1id;
        this.team2id = team2id;
    }

    public String getEventName() {
        return EventName;
    }

    public String getEventDate() {
        return EventDate;
    }

    public String getEventTime() {
        return EventTime;
    }

    public String getDescription() {
        return Description;
    }

    public int getId() {
        return id;
    }

    public String getTeam1id() {
        return team1id;
    }

    public String getTeam2id() {
        return team2id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setEventName(String eventName) {
        EventName = eventName;
    }

    public void setEventTime(String eventTime) {
        EventTime = eventTime;
    }

    public void setEventDate(String eventDate) {
        EventDate = eventDate;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public void setTeam1id(String team1id) {
        this.team1id = team1id;
    }

    public void setTeam2id(String team2id) {
        this.team2id = team2id;
    }

    @Override
    public String toString() {
        return "EventsOOP{" +
                "EventName='" + EventName + '\'' +
                ", EventDate='" + EventDate + '\'' +
                ", EventTime='" + EventTime + '\'' +
                ", Description='" + Description + '\'' +
                ", Team1Id='" + team1id + '\'' +
                ", Team2Id='" + team2id + '\'' +
                '}';
    }

}
