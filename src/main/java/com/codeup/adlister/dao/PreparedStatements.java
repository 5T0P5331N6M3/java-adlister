package com.codeup.adlister.dao;
import com.mysql.cj.jdbc.Driver;
import com.mysql.cj.jdbc.PreparedStatement;
import java.sql.*;

public class PreparedStatements
{
    public static void main(String[] args)
    {
        Config config = new Config();
//        try
//        {
//            DriverManager.registerDriver(new Driver());
//            Connection connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
//
//            String sql = "SELECT * FROM albums WHERE id = ?";
//
//            PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
//
//            stmt.setLong(1, 6);
//
//            ResultSet rs = stmt.executeQuery();
//
//            rs.next();
//            System.out.println("Album name: " + rs.getString("name"));
//            System.out.println("Album artist: " + rs.getString("artist"));
//        } catch (SQLException e)
//        {
//            throw new RuntimeException("Sorry, could not connect to database.");
//        }
        try
        {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
            //Create SQL String to make query
            String insertSql = "INSERT INTO albums (artist, record_name, release_date, genre, sales) VALUES (?, ?, ?, ?, ?)";
            // Instantiate PreparedStatement and pass the SWL string to be used
            PreparedStatement statement = (PreparedStatement) connection.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS);
            // Set the value of the question marks.
            statement.setString(1, "Lil' Wayne");
            statement.setString(2, "Carter III");
            statement.setInt(3, 2008);
            statement.setDouble(4, 3.97);
            statement.setString(5, "Rap");
            // Execute the prepared statement.
            statement.executeUpdate();
            ResultSet resultSet = statement.getGeneratedKeys();
            // MOve to the firs result
            resultSet.next();
            // Print new ID
            System.out.println(resultSet.getLong(1));

        } catch (SQLException e)
        {
            throw new RuntimeException("Sorry, could not connect to database.");
        }
    }
}
