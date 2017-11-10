<%-- 
    Document   : search
    Created on : 16-Oct-2016, 14:02:55
    Author     : stephen
--%>



<%@page import="com.sittingducks.files.NormalizeValidate"%>
<%@page import="org.jsoup.safety.Whitelist"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project/Owasp.CsrfGuard.tld" prefix="csrf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

                    <h1>Login</h1>
                    <form id="form1" name="form1" method="GET" action="search.jsp">
                        <label>Please Enter Keyword:
                            <input type="text" name="keyword" value=""/>
                        </label>
                        <input type="submit" name="action" value="Search"/>
                    </form>
                    <br/>

                <%
                    String searchedName = request.getParameter("keyword");

                    if (searchedName != null) {
                       
                        String result = Jsoup.clean(searchedName,Whitelist.basic());
                %>

                Search Results for <p><%=result%></p>

                </br> ...

                <%
                        //Show result pages
                    }
                %>
            </div>
            <div id="footer">

                <hr />
                Copyright � 2016 | Sitting Ducks

            </div>



        </div>

    </body>

</html>


