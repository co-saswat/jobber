<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>

<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
         <title>Job board HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/price_rangs.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            <link rel="stylesheet" href="styles.css" type="text/css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1> JobSeeker </h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<p style="text-align:right;"> Welcome <%=username %> <a href="logout.jsp"> Logout </a></p>
<jsp:include page="jobseekermenu.jsp"/>
<% 
Date dnow=new Date();
SimpleDateFormat ft=new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss");
String user=request.getParameter("user");
%>
<div class="message">
    <center>
<fieldset>
<legend>Message</legend>
<form method="post" action="jobseekersendmessageaction.jsp" name="messageform">
<table>

<tr>
<td>To</td>
<td><input type="text" name="to_username" value=<%=user %> disabled></td>
</tr>

<tr>
<td>From</td>
<td><input type="text" name="from_username" value=<%=username %> disabled></td>
</tr>

<tr>
<td>Message</td>
<td><textarea name="message" form="messageform" required></textarea></td>
</tr>

<tr>
<td><input type="hidden" name="time" value=<%=ft.format(dnow) %>></td>
</tr>

<tr>
<td align="center" colspan=2><input type="submit" value="Send"></td>
</tr>

</table>
</form>
</fieldset>
    </center>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>