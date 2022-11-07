import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Verifying whether entered data prints correctly
        System.out.println("Username: " + username);
        System.out.println("Password: " + password);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if (request.getMethod().equalsIgnoreCase("post"))
        {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username.equals("admin") && password.equals("password"))
            {
                response.sendRedirect("/profile");
            } else
            {
                response.sendRedirect("/login");
            }
        }
    }
}
