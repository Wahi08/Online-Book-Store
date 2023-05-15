<%-- 
    Document   : welcome
    Created on : 5 Jun 2022, 11:02:48 pm
    Author     : U S E R
--%>

<!DOCTYPE html>
<html>
    <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <link rel="stylesheet" href="css/main.css">
            <link rel="stylesheet" href="css/login-register.css">
    </head>

    <body>
        <!--  Admin Successfully Login -->
        <title>Welcome , <%=session.getAttribute("login")%></title>
        <!--  End -->
        
        <ul>
            <li><h2>BookStore</h2></li>
        </ul>
        
        <div class="main-content">
            <center>

            <%
            if(session.getAttribute("login")==null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
            {
                    response.sendRedirect("index.jsp"); 
            }
            %>

            <h1> Welcome, <%=session.getAttribute("login")%> </h1>
                <button class="btn btn-warning float-end" type="submit" ><a href="AdminHome.jsp">Continue</button>
                <button class="btn btn-warning float-end" type="submit" ><a href="logout.jsp">Logout</button>
            </center>
        </div>
    </body>
</html>
