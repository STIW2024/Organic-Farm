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
        String sql = "select * from contactus";
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>
<br>
<div class="card">
   <div class="card bg-success text-black">
  <div class="card-header">
      <form name="form" class="form-horizontal" method="post" action="deletemessages.jsp">
      <b>Message ID:</b>
      <input type="number" class="form-control-sm" name="randomid" value="<%=resultSet.getString("id")%>" readonly>
      <button style="float:right" type="submit" class="btn btn-danger">YES, Delete</button>
      <h3 style="float:right">IS THIS PROBLEM SOLVED?&nbsp;</h3>
      </form>
     </div>
    <div class="card-body bg-light">
        <h5><b>Name: <%=resultSet.getString("fullname")%></b></h5>
        <h5><b>nAME: <%=resultSet.getString("email")%></b></h5>
        <h5><b>PHONE NUMBER: <%=resultSet.getString("pnumber")%></b></h5>
        <h5 align="justify">MESSAGE: <%=resultSet.getString("message")%></h5>
       
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




