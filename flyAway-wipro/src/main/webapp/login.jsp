<%@page import="servlets.Login"%>
<% Login.isLoggedIn = false; %>
<html>
<head>
    <title>Admin - Login FlyAway Airlines</title>
</head>
<body>
                    <h2 align="center"><b>Login</b></h2>
                    <br>
                <form action="Login" method="post" >
                <table align="center">
                    	<tr>
                        <td><label for="inputEmail" >Email address</label></td>
                        <td><input type="email" name="emailEntered"  id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email"></td></tr>
                        <tr><td><br><small id="emailHelp" >&nbsp;&nbsp;Email : admin@flyaway.com</small></td></tr>
                        <tr>
                        <td><label for="inputPassword" >Password</label></td>
                        <td><input type="password" name="passwordEntered" id="inputPassword" placeholder="Password"></td></tr>
                        <tr><td><br><small id="passwordHelp" >&nbsp;&nbsp;Current Password :&nbsp;<%= Login.password %></small></td></tr>
                    <tr><td>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Login</button></td></tr>
                    </table>
                </form>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</body>
</html>
