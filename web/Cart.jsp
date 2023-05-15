<%-- 
    Document   : Cart
    Created on : Jun 8, 2022, 4:53:47 AM
    Author     : Lenovo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Model.Book"%>
<%@page import="com.DAO.BookDAO"%>
<%@page import="com.Model.Cart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="cartstyle.css">
        <!-- Icon -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <title>Cart | Book Store</title>
    </head>
    
    <style>
        
        h5 {
            font-size: 20px;
            padding-top: 50px;
            padding-left: 40px;
        }
        
        .container {
            background-color: orange;
            width: 100%;
            height: 600px;
        }
        section {
            padding-right: 30px;
            margin-top: 100px;
            padding-top: 20px;
            width: 100%;
            
        }
        
        th, td {
            text-align: center;
            font-size: 20px;
            padding-left: 40px;
            padding-right: 40px;
        }
        button {
            padding-top: 50px;
        }
        button #continue {
            float: right;
        }
        button #checkout {
            float: right;
        }
        
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
            
            
            
        <section>
                <h3 class="heading">Shopping Cart</h3>
                <br><hr>

                <table class="table table-image">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">Qty</th>
                            <th scope="col">Total</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <c:set var="total" value="0"></c:set>
                    <c:set var="id" value="1"></c:set>
                      <c:forEach var="cart" items="${sessionScope.cart}">
                          <c:set var="total" value="${total + cart.book.price * cart.quantity}"></c:set>

                          <tbody>
                              <tr>
                                  <td><c:out value="${id}"/></td>
                                  <td><c:out value="${cart.book.title}"/></td>
                                  <td><fmt:formatNumber type="currency" currencyCode="MYR" value="${cart.book.price}"/></td>
                                  <td><c:out value="${cart.quantity}"/></td>
                                  <td><fmt:formatNumber type="currency" currencyCode="MYR" value="${cart.book.price * cart.quantity}"/></td>
                                  <td><a href="${pageContext.request.contextPath }/cart?action=remove&id=${cart.book.id }"
                                            onclick="return confirm('Click OK to Remove')">Remove</a></td>
                              </tr>
                          </tbody>
                          <c:set var="id" value="${id + 1}"></c:set>
                      </c:forEach>
                </table> 

                <div class="d-flex justify-content-end">
                    <h5>Total: <span class="price text-success"><fmt:formatNumber type="currency" currencyCode="MYR" value="${total}"/></span></h5>
                </div>

                <div class="border-top-0 d-flex justify-content-between">
                    <a href="${pageContext.request.contextPath }/book.jsp"><button type="button" id="continue" class="btn btn-primary">Continue Shopping</button></a>
                    <a href="${pageContext.request.contextPath }/payment.jsp"><button type="button" id="checkout" class="btn btn-primary">Checkout</button></a>
                </div>
    

        </section>
    </body>
</html>
