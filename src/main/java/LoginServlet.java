import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Verifying whether entered data prints correctly
        System.out.println("Username: " + username);
        System.out.println("Password: " + password);

        if (username != null && username.equalsIgnoreCase("admin@stuff.com") && password != null && password.equalsIgnoreCase("admiin"))
        {
            // Redirect to a Welcome Page; need to pass value in session in order to carry forward one to next pages
            HttpSession httpSession = request.getSession();
            // By setting the variable in session, it can be forwarded
            httpSession.setAttribute("username", username);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
