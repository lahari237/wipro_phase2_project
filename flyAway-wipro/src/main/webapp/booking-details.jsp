<%@ page import="model.Booking" %>
<%
    Booking.flight_booking_id = request.getParameter("flight_id");
    Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
    Booking.flight_name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Details - FlyAway Airlines</title>
</head>

<body >
                    <h1 align="center"><b>Booking Details</b></h1>
                    <p align="center"><span><strong>Enter Passenger Details</strong></span></p><br>
                    <form action="${pageContext.request.contextPath}/payment.jsp" method="post" >
                    <table align="center" cellspacing="5" cellpadding="5">
                    <tr>
                        <td><label for="pname">Passenger Name</label></td>
                        <td><input type="text" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)"></td>                  
                    </tr>
                    <tr>                
                        <td><label for="email">Email address</label></td>
                        <td><input type="email" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email"></td>
                    </tr>             
                    <tr>
                        <td><label for="phone">Phone</label></td>
                        <td><input type="number" id="phone" name="phone" placeholder="Enter phone number"></td>
                    </tr>  
                    <tr><td>
                    <button type="submit" value="Submit">Submit</button></td></tr>
                </table>
                </form>
                <br><br><br><br><br><br>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</body>
</html>
