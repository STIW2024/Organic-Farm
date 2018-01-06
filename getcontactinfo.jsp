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
        String sql = "select * from contactinfo";
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>
<div class="col-sm-4">
    <div class="team-member">

        <h4 style="color:#ffff00"><%=resultSet.getString("fullname")%></h4>

        <h5 style="color:orange"><%=resultSet.getString("expertin")%></h5>
        <h5 style="color:white"><%=resultSet.getString("address")%></h5>
        <h5 style="color:white"><%=resultSet.getString("phonenumber")%></h5>
        <h5 style="color:white"><%=resultSet.getString("email")%></h5>
        <ul class="list-inline social-buttons">

            <li class="list-inline-item">
                <a href="<%=resultSet.getString("fblink")%>">
                    <i class="fa fa-facebook"></i>
                </a>
            </li>

        </ul>
    </div>
</div>

<%
        }
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>