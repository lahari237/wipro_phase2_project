<%@ page import="model.Booking" %>
<%@ page import="model.Search" %>
<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");

    if (Booking.passenger_name.equals("")
            || Booking.passenger_email.equals("")
            || Booking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>
<!DOCTYPE html>
<html>
<head>
    <title>payment page</title>
</head>

<body>
      <h1 align="center" ><b>Checkout</b></h1>
      <p align="center" ><span><strong>Enter Payment Details</strong></span></p><br>
      <form action="${pageContext.request.contextPath}/thankyou.jsp" method="post" >
         <table align="center"  cellspacing="5" cellpadding="10"><tr>
              <td><label for="card_details">Name on Card</label></td>
              <td><input type="text" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card"></td>
         </tr><tr>
              <td><label for="card_details">Card Number</label></td>
              <td><input type="number" id="card_details" name="card_details" placeholder="Enter Card Number"></td>
         </tr><tr><td>
          <span><strong>Total fare = <br> <%=Booking.ticket_price%> X <%=Search.persons%> persons = Rs.<%=Booking.ticket_price*Search.persons%></strong></span></td></tr>
          <tr><td><button type="submit"  value="Submit">Confirm Payment</button></td></tr>
          </table>
      </form>
</body><br><br><br><br><br><br>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</html>
<%
    }
%>
