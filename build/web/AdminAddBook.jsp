<%-- 
    Document   : AddBookForm
    Created on : Jun 9, 2022, 12:13:08 AM
    Author     : Lenovo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book Store</title>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
       

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
        
        label a{
            font-size: 18px;
        }
        
        li a {
            font-size: 13px;
        }
        
        .col-sm-10 input{
            background-color: white;
            font-size: 15px;
        }
        
        .form-select {
            font-size: 15px;
        }
        
        a input {
            font-size: 15px;
            padding: 5px;
            border: 12px;
            border-color: black;
            background-color: #D6D4D4;
        }
        
        a:hover input {
            background-color: #BEBEBE;
        }
        
    </style>
    
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
        <!-- header section ends here-->
             
        <!-- Content -->
        <div class="main">
            <div class="col py-3">
                
                <form id="add" action="BookServlet" method="POST" enctype="multipart/form-data">

                    <h1 class="heading"> Add Book</h1>
                    
                    <input type="hidden" name="id" />
                    
                    <input type="hidden" name="action" value="insert" />
                    
                    <div class="mb-3 row">
                        <label for="image"><a>Image File</a></label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control-file" name="image" required>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="title" class="col-sm-2 col-form-label"><a>Title</a></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="title" required>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="author" class="col-sm-2 col-form-label"><a>Author</a></label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="author" required>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="description" class="col-sm-2 col-form-label"><a>Description</a></label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="description" name="description" style="height: 100%;"  required></textarea>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="category" class="col-sm-2 col-form-label"><a>Category</a></label>
                        <div class="col-sm-10">
                            <select class="form-select form-select" name="category" style="width: 20%;">
                                <option value="Fiction">Fiction</option>
                                <option value="Non-Fiction">Non-Fiction</option>
                                <option value="Magazine">Magazine</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="price" class="col-sm-2 col-form-label"><a>Price</a></label>
                        <div class="col-sm-10">
                            <input type="value" class="form-control" name="price" style="width: 20%;" required>
                        </div>
                    </div>

                    <a><input id="submit" type="submit" value="Submit"></a>
                    <a><input id="reset" type="reset" value="Cancel"></a>

                </form>
            </div>
        </div>
        <!-- End-Content -->
    </body>
</html>
