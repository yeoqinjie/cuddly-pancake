<%@page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>

<html>
    <body>
        <h1>Test</h1>
        <h3>Date: <%= new Date() %></h3>
        <p>

        <%! int i = 0; %>
        <% out.println(i); %>
        </p>

        <% if (i == 0) { %>
            <p> Yes </p>
        <% }else{ %>
            <p> No </p>
        <% } %> 

        <% if (i == 0) {
            out.println("yes");
        } else {
            out.println("no");
        } %>

        <a href="welcome/helloworld">Welcome</a>


        <jsp:useBean id = "test" class = "action.SendMessage" />
         <jsp:setProperty name = "test"  property = "message" 
            value = "Hello JSP..." />
            
         <p>Got message....</p>
         <jsp:getProperty name = "test" property = "message" />
   
    </body>
</html>