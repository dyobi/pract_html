import java.io.IOException;

// import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Hakjum", urlPatterns = {"/Hakjum"})
public class Hakjum extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public Hakjum() {
		super();
	}

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException 
    {
		doPost(request, response);
    }
     
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setConntentType("text/html; charset=utf-8");

		String name = request.getParameter("name");
		int score = Integer.parseInt(request.getParameter("score"));

		if (score >= 90)
			grade = "./A.jsp";
		else if (score >= 80)
			grade = "./B.jsp";
		else if (score >= 70)
			grade = "./C.jsp";
		else if (score >= 60)
			grade = "./D.jsp";
		else
			grade = "./F.jsp";

		// RequestDispatcher rd = request.getRequestDispatcher("./" + grade + ".jsp");
		// rd.forward(request, response);
    }
 
    @Override
    public String getServletInfo() {
        return "Hakjum";
    }
}