<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %> 

<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");

String connectionURL = "jdbc:mysql://localhost:3306/jsp";
Connection connection = null;
PreparedStatement pstatement = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(connectionURL,"root","");
    String queryString = "insert into student (firstname, lastname) values(?,?)";

    pstatement = connection.prepareStatement(queryString);
    pstatement.setString(1, firstname);
    pstatement.setString(2, lastname);
    int updateQuery = pstatement.executeUpdate();
    out.println("data inserted");
} catch (Exception ex) {
    out.println("Unable to connect to database.");
} finally {
    pstatement.close();
    connection.close();
}



//out.println(firstname);
//out.println(lastname);
//xampp/tomcat/webapps/index.jsp
//xampp/tomcat/webapps/your-project/your-file.jsp
//      localhost:8080/your-project/your-file.jsp



%>