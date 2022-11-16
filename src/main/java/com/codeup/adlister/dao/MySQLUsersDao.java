package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
        } catch (SQLException e)
        {
            throw new RuntimeException("Could not find user.");
        }

    }

    @Override
    public Long insert(User user) {
        return null;
    }
}
