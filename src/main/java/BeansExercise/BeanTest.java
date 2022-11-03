package BeansExercise;

import java.util.ArrayList;
import java.util.Date;

public class BeanTest
{
    public static void main(String[] args)
    {
        Album waitingForTheSun = new Album(69, "The Doors", "Waiting for the Sun", new Date(1969), 420069420, "Rock");

        Author author = new Author(1, "Casanova", "Geary");

        Quote fuggedaboutit = new Quote(1, author, "Fuggedaboutit.");

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(fuggedaboutit);
        for(Quote quote : quotes)
        {
            System.out.println(quote.getContent());
            System.out.println(quote.getAuthor().getFirstName() + " " + quote.getAuthor().getLastName());
            System.out.println();
        }
    }

    /*In BeanTest, experiment with storing multiple instances of Quote in an arraylist and iterating over it to print out the content and author name of multiple quotes.*/


}
