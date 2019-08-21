<%@page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>

<html>
    <body>
        <%
            String db = "jsp";
            String user = "root";
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");

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
        %>
    </body>
</html>