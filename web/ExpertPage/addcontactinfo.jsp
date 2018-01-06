<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.zip.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


        
<%
    String fullname = request.getParameter("fullname");    
    String expertin = request.getParameter("expertin");
    String address = request.getParameter("address");
    String phonenumber = request.getParameter("phonenumber");
    String email = request.getParameter("email");
    String fblink = request.getParameter("fblink");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://node164850-organic.j.layershift.co.uk/organicfarmdb",
            "root", "VQDxqo93261");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into contactinfo (fullname, expertin, address, phonenumber, email, fblink) values ('" + fullname + "','" + expertin + "','" + address + "','" + phonenumber + "','" + email + "','" + fblink + "')");
    
    
    if (i > 0) {
        
        out.print("<center><h1>News Successfully Submitted!</h1> </center>");
        out.print("<center><h1>You Will Be Redirected in 3 Seconds</h1></center>");
        response.setHeader("Refresh", "2.5;url=expertindex.jsp");
         

    } else {
        response.sendRedirect("expertindex.jsp");
    }
%>
