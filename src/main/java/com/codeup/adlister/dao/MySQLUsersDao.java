package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users
{
    private Connection connection;
    public MySQLUsersDao(Config config)
    {
        try
        {
            DriverManager.deregisterDriver(new Driver());
            connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
        } catch (SQLException e)
        {
            throw new RuntimeException("Could not connect to database.");
        }
    }

    @Override
    public User findByUsername(String username) {
        try
        {
            String usernameQuery = "SELECT * FROM users WHERE username = ? LIMIT 1";
            PreparedStatement stmt = connection.prepareCall(usernameQuery);
            stmt.setString(1, username);
            ResultSet resultSet = stmt.executeQuery();
            resultSet.next();
            User user = new User
                    (
                            resultSet.getLong("id"),
                            resultSet.getString("username"),
                            resultSet.getString("email"),
                            resultSet.getString("password")
                    );
            return user;
        } catch (SQLException e)
        {
            throw new RuntimeException("Could not find user.");
        }

    }

    @Override
    public Long insert(User user)
    {
        try
        {
            String insertQuery = "INSERT INTO users(email, username, password) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, user.getEmail());
            statement.setString(2, user.getUsername());
            statement.setString(3, user.getPassword());

            statement.executeUpdate();
            ResultSet resultSet = statement.getGeneratedKeys();
            resultSet.next();
            return resultSet.getLong(1);


        } catch (SQLException e)
        {
            throw new RuntimeException("Could not register new user.");
        }
    }
}
