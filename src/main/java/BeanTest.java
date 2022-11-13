import java.util.ArrayList;
import java.util.Date;

public class BeanTest
{
    public static void main(String[] args) {
        Album waitingForTheSun = new Album(69, "The Doors", "Waiting for the Sun", new Date(1969), 420069420, "rock");
    }

    Author author = new Author(1, "Casanova","Geary");

    Quote fuggedaboutit = new Quote(1, author, "Fuggedaboutit.");

    ArrayList<Quote> quotes = new ArrayList<>();

    public ArrayList<Quote> getQuotes() {
        return quotes;
    }
}
