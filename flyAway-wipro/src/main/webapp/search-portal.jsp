<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>search-portal</title>
</head>
<body>

        <div >
            <div >
                <h2 align="center" ><b>FlyAway <br> Ticket Booking</b></h2>
                <br>
            </div>
        </div>
            <form action="SearchServlet" >
            <table  align="center" cellspacing="5" cellpadding="5"><tr>
                    <td><label for="date">Date</label></td>
                    <td><input type="date"  id="date" name="date" placeholder="Travel Date.."></td>
               </tr>
               <tr>
                    <td><label for="source">Source</label></td>
                    <td><select  id="source" name="source">
                        <option value="INDIA">INDIA</option>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                    </select></td>
               </tr><tr>
                    <td><label for="destination">Destination</label></td>
                    <td><select  id="destination" name="destination">
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                        <option value="INDIA">INDIA</option>
                    </select></td>
               </tr><tr>
                   <td> <label for="persons">No of Persons</label></td>
                   <td> <select id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select></td>
                   </tr>
               
               <tr><td>
                <button  type="submit" value="Submit">Search Flights</button>
              </td></tr>
              </table>
            </form>
   <br><br><br><br><br><br>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</body>
</html>