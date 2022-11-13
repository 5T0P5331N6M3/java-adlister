import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.getRequestDispatcher("guess.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        int number = Integer.parseInt(req.getParameter("guess"));
        int machineNumber = (int) Math.floor((Math.random() * 3) + 1);
        if (number == machineNumber)
        {
            resp.sendRedirect("/correct");
        } else if ( number != machineNumber)
        {
            resp.sendRedirect("/incorrect");
        } else
        {
            resp.sendRedirect("/guess");
        }
    }
}
