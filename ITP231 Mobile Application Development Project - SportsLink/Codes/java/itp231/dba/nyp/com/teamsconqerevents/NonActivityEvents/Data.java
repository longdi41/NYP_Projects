package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

/**
 * Created by aypro_000 on 7/4/2016.
 */
public class Data {
    int id;
    private String teamName;
    private String sport;
    private String leader;
    private String location;
    private String info;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Data(int id, String teamName, String sport, String leader, String location, String info) {
        this.id = id;
        this.teamName = teamName;
        this.sport = sport;
        this.leader = leader;
        this.location = location;
        this.info = info;
    }

    public Data(String teamName, String sport, String leader, String location, String info) {
        this.teamName = teamName;
        this.sport = sport;
        this.leader = leader;
        this.location = location;
        this.info = info;
        this.id = -1;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String toString() {
        return teamName + "\n" + sport + "\n" + leader + "\n" + location + "\n" + info;
    }
}
