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
    String email = request.getParameter("email");
    String pnumber = request.getParameter("pnumber");    
    String message = request.getParameter("message");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://node164850-organic.j.layershift.co.uk/organicfarmdb",
            "root", "VQDxqo93261");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("INSERT INTO contactus (fullname, email, pnumber, message) values ('" + fullname + "','" + email + "','" + pnumber + "','" + message + "')");
    
    
    if (i > 0) {
        
        out.print("<center><h1>Your Message Has Been Successfully Submitted!</h1> </center>");
        out.print("<center><h1>You Will Be Redirected in 2 Seconds</h1></center>");
        response.setHeader("Refresh", "2;url=index.jsp");
         

    } else {
        response.sendRedirect("index.jsp");
    }
%>
