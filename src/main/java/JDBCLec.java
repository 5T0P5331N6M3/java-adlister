import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBCLec
{
    public static void main(String[] args)
    {
//    List<Album> allAlbums = new ArrayList<>();
//
//    try
//    {
//        // 1. Establish Driver and Connection Object
//        DriverManager.registerDriver(new Driver());
//        Connection connection = DriverManager.getConnection("jbdc:mysql://localhost:3306/codeup_text_db?allowPublicKeyRetrieval=true&useSSL=false")
//    }
        try {
            Config config = new Config();

            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
            Statement stmt = connection.createStatement();
            String insertQuery = "INSERT INTO albums (artist, record_name, release_date, genre, sales) VALUES ('Lil Wayne', 'Carter III', 2008, 'rap', 3.97)";
            // Execute the update and pass the Statement.RETURN_GENERATED_KEYS to ahve the generated keys available to us.
            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            // Set ResultSet to the newly Generated Keys (ids)
            ResultSet resultSet = stmt.getGeneratedKeys();
            if(resultSet.next())
            {
                System.out.println("Inserted new record. New id: " + resultSet.getLong(1));
            }
        } catch (SQLException e)
        {
            throw new RuntimeException("Sorry, could not connect to database.");
        }
    }
}
