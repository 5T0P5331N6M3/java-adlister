public class Album
{
    private long id;
    private String artist;
    private String name;
    private int release_date;
    private double sales;
    private String genre;

    public Album(long id, String artist, String name, int release_date, double sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.release_date = release_date;
        this.sales = sales;
        this.genre = genre;
    }

    public Album(long id, String artist, String name) {
        this.id = id;
        this.artist = artist;
        this.name = name;
    }
}
