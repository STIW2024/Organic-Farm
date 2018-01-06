<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://node164850-organic.j.layershift.co.uk/";
    String database = "organicfarmdb";
    String userid = "root";
    String password = "VQDxqo93261";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<%
    try {
        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
        statement = connection.createStatement();
        String sql = "select * from addnews";
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>
<br>
<div class="card">
   <div class="card bg-primary text-black">
  <div class="card-header text-uppercase"><b style="float:right">News ID: <%=resultSet.getString("randomid")%></b><b style="float:left"><%=resultSet.getString("title")%></b></div>
    <div class="card-body bg-light">
        <h4><b>AUTHOR: <%=resultSet.getString("author")%></b></h4>
        <h4><b>DATE: <%=resultSet.getString("date")%></b></h4>
        <h5 align="justify"><%=resultSet.getString("content")%></h5>
    </div>
  </div>
  </div>

<%
        }
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>




