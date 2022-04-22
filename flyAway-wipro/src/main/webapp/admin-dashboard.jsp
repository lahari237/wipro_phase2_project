<%@page import="java.sql.*"%>
<%@page import="servlets.Login"%>

<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/flyaway?allowPublicKeyRetrieval=true&useSSL=false";
String dbName = "flyaway";
String userId = "root";
String password = "lahari@12";
try {
    Class.forName(driverName);
    System.out.println("got connection");
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
    <title>admin</title>
    
</head>

<body>
<%
    if (Login.isLoggedIn) {
%>
    <h2 align="center"><b>Admin Dashboard</b></h2>
    <span><strong>You are LoggedIn as : <%=Login.email%>. <hr>Your Password is : <%=Login.password%></strong></span><br>
    <br>
            <form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
                <button type="submit" >Change Password</button>
            </form>&ensp;
            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                <button type="submit" >Logout</button>
            </form>
        
            <table align="center"cellspacing="5" cellpadding="5">
                <thead>
                <tr >
                    <th >Flight ID</th>
                    <th >Name</th>
                    <th >Source</th>
                    <th >Destination</th>
                    <th >Day</th>
                    <th >Ticket Price</th>
                </tr>
                </thead>
                <tbody>
                <p align="center"><span><strong> Flight Table </strong></span></p>
                <%
                    try{
                        connection = DriverManager.getConnection(connectionUrl, userId, password);
                        statement=connection.createStatement();
                        String sql ="SELECT * FROM flight";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <tr bgcolor="teal">
                    <td><%=resultSet.getString("flight_id") %></td>
                    <td><%=resultSet.getString("name") %></td>
                    <td><%=resultSet.getString("source") %></td>
                    <td><%=resultSet.getString("destination") %></td>
                    <td><%=resultSet.getString("day") %></td>
                    <td><%=resultSet.getString("ticket_price") %></td>
                </tr>
                <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                </tbody>
            </table><br>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</body>
</html>
