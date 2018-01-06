<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.zip.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


        
<%
    String randomid = request.getParameter("randomid");
    String title = request.getParameter("title");
    String author = request.getParameter("author");    
    String content = request.getParameter("content");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://node164850-organic.j.layershift.co.uk/organicfarmdb",
            "root", "VQDxqo93261");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into addnews (randomid, title, author, content, date) values ('" + randomid + "','" + title + "','" + author + "','" + content + "', NOW())");
    
    
    if (i > 0) {
        
        out.print("<center><h1>News Successfully Submitted!</h1> </center>");
        out.print("<center><h1>You Will Be Redirected in 3 Seconds</h1></center>");
        response.setHeader("Refresh", "2.5;url=expertindex.jsp");
         

    } else {
        response.sendRedirect("expertindex.jsp");
    }
%>
