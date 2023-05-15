<%-- 
    Document   : home
    Created on : 14 Jun 2022, 8:52:38 pm
    Author     : U S E R
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
    
    <style>
	ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	}
	
	li {
		float: left;
	}
	
	li a{
	display: block;
	color: white;
	text-align: center;
	padding: 14px 55px;
	text-decoration: none;
	}
	
	li a:hover{
		background-color: #111;
	}	
        
        li a {
            font-size: 13px;
        }
    </style>

    </head>
    <body>

        <!-- header section starts  -->
        <header>
            <a href="#" class="logo"><i class="fa fa-book"></i>Book Store</a>

            <div id="menu-bar" class="fas fa-bars"></div>

            <ul>
                <li><a href="AdminAddBook.jsp">Add Book</a></li>
                <li><a href="AdminBookList.jsp">Books</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
           </ul>
            <a style="font-size:13px;"><%=session.getAttribute("login")%></a>
        </header>
        <!-- header section ends -->

        <!-- home section starts  -->
        <section class="home" id="home">
            <div class="content">
                <h3>There is no friend as loyal as a book</h3>
                <p>A writer only begins a book. A reader finishes it. </p>
                <a href="book.jsp" class="btn">Books</a>
            </div>

            <div class="image">
                <img src="images/reader.png" alt="">
            </div>
        </section>
    </body>
</html>
