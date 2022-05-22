package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

/**
 * Created by Ariel on 25/7/2016.
 */
public class Scores {

    int id;
    private String eventId;
    private String teamId;
    private int score;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Scores(int id, String eventId, String teamId, int score) {
        this.eventId = eventId;
        this.teamId = teamId;
        this.id = id;
        this.score = score;
    }

    public Scores(String eventId, String teamId, int score) {
        this.eventId = eventId;
        this.teamId = teamId;
        this.score = score;
    }


    public String getEventId() {
        return eventId;
    }

    public void setEventId(String eventId) {
        this.eventId = eventId;
    }

    public String getTeamId() {
        return teamId;
    }

    public void setTeamId(String teamId) {
        this.teamId = teamId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int name) {
        this.score = score;
    }

    @Override
    public String toString() {

        return eventId + " - " + teamId + " - " + score;
    }
}
