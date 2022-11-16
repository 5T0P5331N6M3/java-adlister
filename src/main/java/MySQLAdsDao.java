import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.jsp.jstl.core.Config;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads
{
    private final Connection connection = null;
    private Config config;
    public MySQLAdsDao(Config config) //throws SQLException
    {
        try
        {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection
                    (
                            config.getUrl(),
                            config.getUser(),
                            config.getPassword()
                    );
        } catch(SQLException e)
        {
            e.printStackTrace();
        }

//        connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());

    }

    @Override
    public List<Ad> all() throws SQLException
    {
        List<Ad> allAds = new ArrayList<>();
        try
        {
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM ads";

            ResultSet rs = statement.executeQuery(query);

            while(rs.next())
            {
                Ad newAd = new Ad
                        (
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        );
                allAds.add(newAd);
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return allAds;
    }

    @Override
    public Long insert(Ad ad) throws SQLException
    {
        try
        {
            Statement statement = connection.createStatement();
            String insertQuery ="INSERT INTO ads(user_id, title, description) VALUES " +  ad.getId() + " , " +  ad.getTitle() + " , " +  ad.getDescription() + ")";

            statement.executeUpdate(insertQuery(ad), Statement.RETURN_GENERATED_KEYS);
            ResultSet resultSet = statement.getGeneratedKeys();
        } catch (SQLException e)
        {
            throw new RuntimeException("Error creating new ad.", e);
        }


//        if (resultSet.next())
//        {
//            System.out.println("Insert new ad: " + resultSet.getLong(1));
//        }
//        return resultSet.getLong(1);
    }

    private String insertQuery(Ad ad) {
    }

    public String createQuery(Ad ad)
    {
        return "INSERT INTO ads (id, user_id, title, description) VALUES (" +
                ad.getId() + " , " +  ad.getUserId() + " , " +  ad.getTitle() + " , " +  ad.getDescription() + ")";
    }
}
