import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SqlInsert extends HttpServlet {
    private String msg;

    public void init() throws ServletException {
        msg = "Hello World";
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>Please use the form to submit your registration.</h1>");
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String db = "jsp";
        String user = "root";
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver"); // com.mysql.cj.jdbc.Driver
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
        try {
            java.sql.Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, user, "");
            out.println (db+ " database successfully opened.");

            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into student (firstname, lastname) values('" + firstname + "', '" + lastname + "')");

            out.println("Data inserted.");
        }
        catch(SQLException e) {
            out.println("SQLException caught: " +e.getMessage());
        }
    }
}
