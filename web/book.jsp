<%-- 
    Document   : book
    Created on : 14 Jun 2022, 8:54:06 pm
    Author     : U S E R
--%>

<%@page import="java.util.List"%>
<%@page import="com.Model.Book"%>
<%@page import="com.DAO.BookDAO"%>
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
        
    <!-- Content -->
        <section class="menu" id="menu">
            <br><br><br><br>

            <h1 class="heading">Book List</h1>
            
            <div class="box-container">

                <%
                BookDAO bookDAO = new BookDAO();
                List<Book> listBook = bookDAO.selectAllBooks();
                for (Book book : listBook) {
                %>
                
                <div class="box">
                    <span class="delete"></span>
                    <span class="price">RM <%=book.getPrice()%></span>
                    <img src="/Book_Store/image.jsp?id=<%=book.getId()%>" alt="">
                    <h3>
                        <a><%=book.getTitle()%></a> <!-- Book Title -->
                    </h3>
                    <a><%=book.getAuthor()%></a>
                    <div class="card-footer">
                       
                        <a class="li-modal" href="${pageContext.request.contextPath }/cart?&action=buy&id=<%=book.getId()%>"><button type="button" class="btn btn-primary" >
                            Buy
                        </button> </a>
                    </div>
                </div>
                
                <% } %>
            </div>
            
            
        </section>
        <!-- End-Content -->
    </body>
</html>