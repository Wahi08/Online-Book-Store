<%-- 
    Document   : logout
    Created on : 5 Jun 2022, 11:04:04 pm
    Author     : U S E R
--%>

<% 
session.invalidate(); //destroy session
response.sendRedirect("LoginForm.jsp");
%>

