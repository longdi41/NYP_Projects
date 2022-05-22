package itp231.dba.nyp.com.teamsconqerevents.NonActivityEvents;

/**
 * Created by Jun Long on 25/7/2016.
 */
public class NewsFeed {
    private int id;
    private String news;

    public NewsFeed(String news) {
        this.news = news;
    }

    public NewsFeed(int id, String news) {
        this.id = id;
        this.news = news;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }
}
