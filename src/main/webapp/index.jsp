<%-- 
    Document   : home
    Created on : Oct 17, 2016, 8:46:14 PM
    Author     : Stephen
--%>

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

    <h1>Welcome</h1>
    <p> Welcome to the <b>Sitting Ducks</b> Website. Possibly the worst Website ever built. <br/>
    Your mission is to find any vulnerability you can, exploit it and then fix it.. Simple!!</p>
    <p>${param.message}</p>
</div>
<div id="footer">

    <hr />
        Copyright © 2005 | All Rights Reserved

</div>



</div>

</body>

</html>

