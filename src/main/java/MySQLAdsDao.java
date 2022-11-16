import com.mysql.cj.jdbc.Driver;

import javax.servlet.jsp.jstl.core.Config;
import java.sql.*;
import java.util.List;

public class MySQLAdsDao implements Ads
{
    private final Connection connection;
    private Config config;
    public MySQLAdsDao(Config config) throws SQLException
    {
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());

    }

    @Override
    public List<Ad> all() throws SQLException {
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM ads");

    }

    @Override
    public Long insert(Ad ad) throws SQLException {
        Statement statement = connection.createStatement();
        statement.executeUpdate(createQuery(ad), Statement.RETURN_GENERATED_KEYS);
        ResultSet resultSet = statement.getGeneratedKeys();
        if (resultSet.next())
        {
            System.out.println("Insert new ad: " + resultSet.getLong(1));
        }
        return resultSet.getLong(1);
    }
    public String createQuery(Ad ad)
    {
        return "INSERT INTO ads (id, user_id, title, description) VALUES (" +
                ad.getId() + " , " +  ad.getUserId() + " , " +  ad.getTitle() + " , " +  ad.getDescription() + ")";
    }
}
