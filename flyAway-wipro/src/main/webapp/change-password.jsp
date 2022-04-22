<%@page import="servlets.Login"%>
<html>
<head>
    <title>change-password</title>
</head>
<body>
        <h1>Password Change</h1>
            <%
            if (Login.isLoggedIn) {
            %>
                <form action="PasswordChange" method="post">
                <table align="center" cellspacing="5" cellpadding="5">
                    <tr><td>
                        <label >Email address : admin@flyaway.com</label>
                    </td></tr>
                    <tr><td>
                        <label for="inputPassword" >New Password</label>
                        <input type="password" name="passwordEntered"  id="inputPassword" placeholder="Enter a new password"></td>
                        </tr><tr><td>
                        <small id="passwordHelp" > Current Password :<%= Login.password %></small></td></tr>
                    <tr><td>
                    <button type="submit" >Change Password</button></td></tr>
                    </table>
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>
    </div><br><br><br><br><br><br>
<div class="footer" align="center">
    FlyAway designed by Lahari
</div>
</body>
</html>
