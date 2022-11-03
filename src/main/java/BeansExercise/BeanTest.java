package BeansExercise;

public class BeanTest
{
    public static void main(String[] args)
    {
        Album waitingForTheSun = new Album(69, "The Doors", "Waiting for the Sun", "January 1, 1969", 420, "Rock");

        Author douglasAdams = new Author(1, "Douglas", "Adams");

        Quote dontPanic = new Quote(1, 1, "");

        System.out.println();
        System.out.println();
    }

    /*In BeanTest, experiment with storing multiple instances of Quote in an arraylist and iterating over it to print out the content and author name of multiple quotes.*/


}
