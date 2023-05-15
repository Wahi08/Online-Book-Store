<%-- 
    Document   : aboutus
    Created on : 14 Jun 2022, 8:55:05 pm
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Book Store </title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

    </head>
    
    <style>
        li a {
            font-size: 13px;
        }
        
        a i {
            font-size: 24px;
        }
    </style>
    
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
                <li><a href="logout.jsp">LogOut</a></li>
           </ul>
            
            <a href="${pageContext.request.contextPath }/cart"><i class="bi bi-bag"></i></a>
        </header>
        
        <br><br><br><br><br><br><br><br>
        
        <center><img src="images/bukuu.jpg"style="width:30%"></center>

        <h1 style="text-align:center;">About Us</h1>
        <br>
        <div class="content">
            <h2 style="text-align:center;">Read books! You’d be surprised what you find.</h2>
        </div>
        <br>
        <div class="content">
             <h2 style="text-align:center;">SWY Book Company (M) Sdn Bhd is 100% managed by Malaysians 
                 and is strongly positioned 
                 as a trilingual bookstore catering for everyone from all walks of life..<br></h2>
        </div>
        <br>
        <div class="content">
            <h2 style="text-align:center;">People are our customers, the reason of our existence. People are our employees, our greatest asset..</h2>
        </div>

        <script>
            var coll = document.getElementsByClassName("about us");
            var i;

            for (i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function() {
                    this.classList.toggle("active");
                    var content = this.nextElementSibling;
                    if (content.style.display === "block") {
                        content.style.display = "none";
                    }
                    else {
                        content.style.display = "block";
                    }
                });
            }
        </script>
    </body>
</html>
