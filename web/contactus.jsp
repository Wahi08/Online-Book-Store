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
        
        <center>
            <br><br><br><br><br><br><br>
            <img src="images/contact.png" alt="">  

            
            <h1>Contact Form</h1>
        </center>

        <div class="form-row">
            <label>
                 <h2>Username</h2>
                 <input type="text" name="txt_username" id="uname" placeholder="enter User name">
            </label>
        </div>
        <div class="form-row">
            <label>
                 <h2>Email</h2>
                 <input type="text" name="txt_email" id="email" placeholder="enter email">
            </label>
        </div>

        <div class="form-row">
            <label>
                <h2>Feedback</h2>
                <input type="text" name="txt_Feedback" id="Feedback" placeholder="enter your feedback">
            </label>
        </div>

        <div class="col-md-12">
            <button class="btn btn-warning float-end" type="submit" >Submit</button>
        </div>
    
    </body>
</html>
