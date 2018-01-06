<%-- 
    Document   : logout
    Created on : Dec 10, 2017, 11:33:31 PM
    Author     : Azimjon Khamdamov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG OUT</title>
    </head>
    <body>
        <%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("../index.jsp");
%>

    </body>
</html>
