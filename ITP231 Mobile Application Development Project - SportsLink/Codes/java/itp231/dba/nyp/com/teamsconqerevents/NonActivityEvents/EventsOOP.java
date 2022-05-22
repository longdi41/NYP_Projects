package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

/**
 * Created by Jun Long on 6/6/2016.
 */
public class EventsOOP {
    public static String INTENT_NAME_ARRAY_ITEM = "ArrayItem";

    public static String INTENT_NAME_EVENTNAME = "EventName";
    public static String INTENT_NAME_EVENTDATE = "EventDate";
    public static String INTENT_NAME_EVENTTIME = "EventTime";
    public static String INTENT_NAME_DESCRIPTION = "Description";
    public static String INTENT_NAME_TEAM1SCORE = "TeamOneScore";
    public static String INTENT_NAME_TEAM2SCORE = "TeamTwoScore";
    public static String INTENT_NAME_TEAM1ID = "TeamOneName";
    public static String INTENT_NAME_TEAM2ID = "TeamTwoName";

    private int id;
    private String EventName;
    private String EventDate;
    private String EventTime;
    private String Description;

    // Add in scores
    private int team1scores;
    private int team2scores;

    // From teams
    private String team1id;
    private String team2id;

    public EventsOOP(String eventName, String eventDate, String eventTime, String description, String team1id, String team2id, int team1scores, int team2scores) {
        EventName = eventName;
        EventDate = eventDate;
        EventTime = eventTime;
        Description = description;
        this.team1scores = team1scores;
        this.team2scores = team2scores;
        this.team1id = team1id;
        this.team2id = team2id;
    }

    public EventsOOP(int id, String eventName, String eventDate, String eventTime, String description, String team1id, String team2id, int team1scores, int team2scores) {
        this.id = id;
        EventName = eventName;
        EventDate = eventDate;
        EventTime = eventTime;
        Description = description;
        this.team1scores = team1scores;
        this.team2scores = team2scores;
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

    public int getTeam1scores() {
        return team1scores;
    }

    public int getTeam2scores() {
        return team2scores;
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

    public void setTeam1scores(int team1scores) {
        this.team1scores = team1scores;
    }

    public void setTeam2scores(int team2scores) {
        this.team2scores = team2scores;
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
                ", Team1Scores='" + team1scores + '\'' +
                ", Team2Scores='" + team2scores + '\'' +
                ", Team1Id='" + team1id + '\'' +
                ", Team2Id='" + team2id + '\'' +
                '}';
    }

}
