<%-- 
    Document   : registration
    Created on : Mar 2, 2023, 8:10:26 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="mycss.css" type="text/css" />
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
        </header>
        <section>
            <form action="mainController" method="post" class="form_register">
                <h1>Register</h1>
                <table>
                    <tr><td>Email</td><td><input type="email" name="txtemail" required="" value="<%= (request.getAttribute("txtemail") == null) ? "" : request.getAttribute("txtemail")%>"></td></tr>
                    <tr><td>Full name</td><td><input type="text" name="txtfullname" required="" value="<%= (request.getAttribute("txtfullname") == null) ? "" : request.getAttribute("txtfullname")%>"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="txtpassword" required=""></td></tr>
                    <tr><td>Phone</td><td><input type="text" name="txtphone" value="<%= (request.getAttribute("txtphone") == null) ? "" : request.getAttribute("txtphone")%> ">
                            <% if (request.getAttribute("ERROR") != null) {%>
                            <span style="color:red;"><%= request.getAttribute("ERROR")%></span>
                            <% }%></td></tr>
                    <tr><td colspan="2"><input type="submit" value="register" name="action"></td></tr>
                </table>
            </form>
        </section>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
