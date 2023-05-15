<%-- 
    Document   : admin
    Created on : 15 Jun 2022, 1:16:09 am
    Author     : aisya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book Store</title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

    </head>
    <body>
        <!-- header section starts  -->
        <header>

            <a href="#" class="logo"><i class="fa fa-book"></i>Book Store</a>
            <div id="menu-bar" class="fas fa-bars"></div>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="book.jsp">Books</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
                <li><a href="AdminLoginForm.jsp">Admin</a></li>
                <li><a href="${pageContext.request.contextPath }/cart"><i class="bi bi-bag"></i></a></li>
            </ul>
        </header>
    </body>
</html>