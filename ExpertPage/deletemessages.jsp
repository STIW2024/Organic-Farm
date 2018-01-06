<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://node164850-organic.j.layershift.co.uk/organicfarmdb";%>
<%!String user = "root";%>
<%!String psw = "VQDxqo93261";%>

<%
String randomid = request.getParameter("randomid");
if(randomid != null)
{
Connection con = null;
PreparedStatement ps = null;
int messid = Integer.parseInt(randomid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "DELETE FROM contactus WHERE id="+messid;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{

          out.print("<center><h1>News Successfully Deleted</h1> </center>");
        out.print("<center><h1>You Will Be Redirected in 2 Seconds</h1></center>");
        response.setHeader("Refresh", "2;url=expertindex.jsp");



}
else
        out.print("<center><h1>OOOPS... YOU ENTERED WRONG ID</h1></center>");
        
        response.setHeader("Refresh", "1;url=expertindex.jsp");

}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>