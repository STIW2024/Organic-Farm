<%@ page import ="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
    String fullname = request.getParameter("fullname");    
    String email = request.getParameter("email");
    String age = request.getParameter("age");
    String organization=request.getParameter("organization");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://node164850-organic.j.layershift.co.uk/organicfarmdb",
            "root", "VQDxqo93261");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into registerexpert(fullname, email, age, organization, username, password, regdate) values ('" + fullname + "','" + email + "','" + age + "','" + organization + "','" + username + "','" + password + "', CURDATE())");
    if (i > 0) {
       out.print("<center><h1>You Have Successfully Registered</h1> </center>");
       out.print("<center><h1>You Will Be Redirected to Login Page after 3 seconds</h1></center>");
        
        response.setHeader("Refresh", "2.5;url=index.jsp");
       
    } else {
        response.sendRedirect("index.jsp");
    }
%>