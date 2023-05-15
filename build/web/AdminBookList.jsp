<%-- 
    Document   : AddBookForm
    Created on : Jun 9, 2022, 12:13:08 AM
    Author     : Lenovo
--%>
<%@page import="java.util.List"%>
<%@page import="com.Model.Book"%>
<%@page import="com.DAO.BookDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book Store</title>

        <!-- Icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"> 
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">
       
    </head>
    
    <style>
        .main {
            margin-left: 250px;
            margin-right: 250px;
            margin-top: 100px;
            margin-bottom: 20px;
            padding: 25px 55px 70px;
            background-color: #EFEFEE;
            border-color: #DEDEDC;
            border-style: solid;
            }
        
        h3{
            text-align: center;
        }
        
        label {
            font-size: 30px;
        }
        
        li a {
            font-size: 13px;
        }
        
        
    </style>
    
    <body>
        <!-- header section starts  -->
        <header>
            <a  class="logo"><i class="fa fa-book"></i>Book Store</a>

            <div id="menu-bar" class="fas fa-bars"></div>

            <ul>
                <li><a href="AdminAddBook.jsp">Add Book</a></li>
                <li><a href="AdminBookList.jsp">Books</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
           </ul>
            <a style="font-size:13px;"><%=session.getAttribute("login")%></a>
            
        </header>
        <!-- header section ends here-->
        
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
                        <a><%=book.getTitle()%></a> &nbsp; <!-- Book Title -->
                        <a href="BookServlet?action=edit&id=<%=book.getId()%>"><i class="bi bi-pencil-square"></i></a> &nbsp; <!-- Edit Book -->
                        <a href="BookServlet?action=delete&id=<%=book.getId()%>" ><i class="bi bi-trash-fill"></i></a> <!-- Delete Book -->
                    </h3>
                    <a><%=book.getAuthor()%></a>
                    
                </div>
                
                <% } %>
            </div>
        </section>
        <!-- End-Content -->
    </body>
</html>
