<%-- 
    Document   : logout
    Created on : Nov 6, 2017, 3:01:42 PM
    Author     : Win7

//NEW CODE 06 NOVEMBER
--%>

<%@page import="com.sittingducks.files.ValidateLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Sitting Ducks</title>
        <link href="style.css" rel="stylesheet" type="text/css" />

    </head>

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


                <%

                    
                    session.invalidate();
                    ValidateLogin.isLogin = false;
                    ValidateLogin.redirect = false;
                %>


                <h1>YOU ARE LOGOUT!</h1>

                <%
                    response.sendRedirect("index.jsp?message=YOU ARE LOGOUT!");

                %>

            </div>
            <div id="footer">

                <hr />
                Copyright © 2005 | All Rights Reserved

            </div>
        </div>

    </body>

</html>



