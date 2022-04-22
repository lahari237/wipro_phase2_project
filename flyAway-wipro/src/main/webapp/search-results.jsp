<%@page import="java.sql.*"%>
<%@ page import="model.Search" %>
<%
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/flyaway?allowPublicKeyRetrieval=true&useSSL=false";
    String dbName = "flyaway";
    String userId = "root";
    String password = "lahari@12";
    String query = Search.getQuery();
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
   <title>search-results</title>
</head>

<body>

<div>
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong>
       <marquee> Showing available flights from <%=Search.source%> to  <%=Search.destination%> </marquee><br>
        Date of travel : <%=Search.date%> (<%=Search.day%>)  <br>
        No of travellers :  <%=Search.persons%>  <br>
    </p>
    <table align="center" cellpadding="5" cellspacing="5">
        <thead>
        <tr>
            <th>Flight</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Date</th>
            <th>Ticket Price</th>
            <th>Select</th>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
        <%
            try{
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
                System.out.println("u magical");
                while(resultSet.next()){
                	System.out.println(resultSet.getString("name"));
                	
        %>
        <tr bgcolor="teal">
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=Search.date%></td>
            <td><%=resultSet.getString("ticket_price") %></td>
            <td>
                <form action="${pageContext.request.contextPath}/booking-details.jsp" method="post">
                    <input type="hidden" id="name" name="name" value="<%=resultSet.getString("name")%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" id="flight_id" name="flight_id" value="<%=resultSet.getString("flight_id")%>">
                    <input type="submit"  value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</div><br><br><br><br><br><br>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</body>
</html>