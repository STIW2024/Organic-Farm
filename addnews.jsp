<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.zip.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


        
<%
    String author = request.getParameter("author");    
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/organicfarmdb",
            "root", "");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into addnews (author, title, content, date) values ('" + author + "','" + title + "','" + content + "', DATE(NOW()))");
    
    
    if (i > 0) {
        
        out.print("<center><h1>News Successfully Submitted!</h1> </center>");
        out.print("<center><h1>You Will Be Redirected in 3 Seconds</h1></center>");
        response.setHeader("Refresh", "2.5;url=expertindex.jsp");
         

    } else {
        response.sendRedirect("expertindex.jsp");
    }
%>
