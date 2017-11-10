<%-- 
    Document   : members
    Created on : 16-Oct-2016, 11:46:42
    Author     : stephen
--%>
<%@page import="com.sittingducks.files.ValidateLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Sitting Ducks</title>
        <link href="style.css" rel="stylesheet" type="text/css" />

    </head>
    <%
        String username = "";
        String password = "";


    %>
    <body>
        <div id="main">
            <div id="top-nav">
                If<b> Carlsberg</b> did Websites... It <b>definitely</b> wouldn't be this!
            </div>


            <div id="header">
                <img src="images/Banner.jpg" alt="" width="720" height="160" />
            </div>
            <div id="navigation">

                <jsp:include page= "navigationMenu.jsp"></jsp:include>


                </div>
                <br></br>
                <div id="content">

                <% if (ValidateLogin.isLogin) {

                %>

                <h1>WELCOME Members</h1>

                Welcome ${sessionScope['user']}
                <p>This is the <strong>Members</strong> section. You can't really do anything special here, <br/>
                    but if you are reading this, at least you know the login worked :D</p>

                <%                    } else {
                        response.sendRedirect("errorpage.jsp?message=PLEASE LOGIN");
                    }

                %>

            </div>
            <div id="footer">

                <hr />
                Copyright © 2016 | Sitting Ducks

            </div>



        </div>

    </body>

</html>