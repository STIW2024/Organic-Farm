<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <h1>UPS... :)</h1></center>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://node164850-organic.j.layershift.co.uk/organicfarmdb",
                    "root", "VQDxqo93261");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from registerexpert where username='" + username + "' and password='" + password + "'");
            if (rs.next()) {

                session.setAttribute("username", username);
                request.getParameter("username");
                //out.println("welcome " + username);
                //out.println("<a href='logout.jsp'>Log out</a>");
                response.sendRedirect("ExpertPage/expertindex.jsp");
            } else {
                out.println("<body> <center>");
                out.println("<h2>INVALID PASSWORD</h2>");
                out.println("<a href='index.jsp'>TRY AGAIN</a>");
                out.println("</body> </center>");
                response.setHeader("Refresh", "1.5;url=index.jsp");
            }
        %>
      


    </body>
</html>