<%-- 
    Document   : home
    Created on : Oct 17, 2016, 8:46:14 PM
    Author     : Stephen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project/Owasp.CsrfGuard.tld" prefix="csrf" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sitting Ducks</title>
<link href="style.css" rel="stylesheet" type="text/css" />

</head>

    
<%
   
 String username="";
 String password="";
 Cookie[] cookies = request.getCookies();
// cookies.setHttpOnly(true);
 if (cookies != null)
  for (Cookie c : cookies) {
        if ("username".equals(c.getName())) {
         username= c.getValue();
        }
        else if("password".equals(c.getName()))
        {
            password= c.getValue();
        }
  }

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

    <h1>Login</h1>
    <csrf:form action="ValidateLogin" method="post">
            <table> 
                <tr><td>UserName: </td><td><input type="text" name="username" value="<%=username%>" /></td></tr>
                <tr><td>Password :</td><td><input type="password" name="password" value="<%=password%>" autocomplete="off"/></td></tr>
                <tr><td><input type="submit" name="Login" value="Login"/></td></tr>
            </table>  
        </csrf:form>
    <%
        if(request.getParameter("err")!=null){out.print(request.getParameter("err"));} 
    %>
</div>
<div id="footer">

    <hr />
        Copyright © 2016 | Sitting Ducks

</div>



</div>

</body>

</html>

