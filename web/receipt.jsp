<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Model.Book"%>
<%@page import="com.DAO.BookDAO"%>
<%@page import="com.Model.Cart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">
        <style>
            body {
                font-family: Arial;
                font-size: 17px;
                padding: 8px;
            }

            * {
                box-sizing: border-box;
            }

            .row {
                display: -ms-flexbox; /* IE10 */
                display: flex;
                -ms-flex-wrap: wrap; /* IE10 */
                flex-wrap: wrap;
                margin: -15px;
            }

            .col-25 {
                -ms-flex: 25%; /* IE10 */
                flex: 25%;
            }

            .col-50 {
                -ms-flex: 50%; /* IE10 */
                flex: 50%;
            }

            .col-75 {
                -ms-flex: 75%; /* IE10 */
                flex: 75%;
            }

            .col-25,
            .col-50,
            .col-75 {
                padding: 0 16px;
            }

            .container {
                background-color: #f2f2f2;
                padding: 5px 20px 15px 20px;
                border: 4px solid #FFFFCC;
                border-radius: 3px;
            }

            input[type=text] {
                width: 100%;
                margin-bottom: 20px;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            label {
                margin-bottom: 10px;
                display: block;
            }

            .icon-container {
                margin-bottom: 20px;
                padding: 7px 0;
                font-size: 24px;
            }

            .btn {
                background-color: #66B2FF;
                color: white;
                padding: 12px;
                margin:0;
                border: #FFFFCC;
                width: 20%;
                position: absolute;
                border-radius: 10px;
                cursor: pointer;
                font-size: 17px;
                top: 90%;
                left: 40%;
            }

            .btn:hover {
                background-color: #45a049;
            }

            a {
                color: #2196F3;
            }

            hr {
                border: 1px solid lightgrey;
            }

            span.price {
                float: right;
                color: grey;
            }

            /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
            @media (max-width: 800px) {
                .row {
                    flex-direction: column-reverse;
                }
                .col-25 {
                    margin-bottom: 20px;
                }
            }

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
        </style>
        <script type="text/javascript" src="js/receipt.js" ></script>
    </head>
    <body>
        <header>
            <a href="#" class="logo"><i class="fa fa-book"></i>Book Store</a>

            <div id="menu-bar" class="fas fa-bars"></div>

            <ul>

                <li><a href="home.jsp">Home</a></li>
                <li><a href="book.jsp">Books</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath }/cart"><i class="bi bi-bag"></i></a></li>
            </ul>
        </header>
        <section class="receipt" id="receipt">

            <div class="row">
                <div class="col-50">
                    <h3>Receipt</h3>

                    <div class="box">
                        <h2>
                            Name : <span id="result-firstname" />
                        </h2>
                        <br>

                        <c:forEach var="cart" items="${sessionScope.cart}">
                            <c:set var="total" value="${total + cart.book.price * cart.quantity}"></c:set>
                                <h2>
                                    Total :  <span id="result-address"/><fmt:formatNumber type="currency" currencyCode="MYR" value="${total}"/>
                            </h2>
                            <br>
                            <h2>
                                Title If Book :  <span id="result-typeBook" /><c:out value="${cart.book.title}"/>
                            </h2>
                            <br>
                            <h2>
                                Total Of Book :  <span id="result-totalOfBook"/><c:out value="${cart.quantity}"/>
                            </h2>

                        </c:forEach>
                        <br><br>
                        <h3>Thanks for ordering from us!</h3>
                    </div>

                    </section>

                    </body>
                    </html>