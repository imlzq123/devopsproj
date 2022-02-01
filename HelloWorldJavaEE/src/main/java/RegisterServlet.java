import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String n = request.getParameter("userName");
		String t = request.getParameter("title");
		String txt = request.getParameter("text");
		String c = request.getParameter("category");
		
		try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection(
		 "jdbc:mysql://localhost:4306/userdetails", "root", "password");
		 
				 
		  PreparedStatement ps = con.prepareStatement("insert into USERDETAILS values(?,?,?,?)");
				  
		   ps.setString(1, n);
		   ps.setString(2, p);
		   ps.setString(3, txt);
		   ps.setString(4, c);
		
		   int i = ps.executeUpdate();

		   if (i > 0){
			   PrintWriter writer = response.getWriter();
			   writer.println("<h1>" + "You have successfully posted!" +
			   "</h1>");
			   writer.close();
			   }
		}
		catch (Exception exception) {
			 System.out.println(exception);
			 out.close();
			}
			doGet(request, response);
	}

}
