<%@ page import="java.sql.*" %>

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
<h1> Recruiter </h1>
<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="recruiter") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<p style="text-align:right;"> Welcome <%=username %> <a href="logout.jsp"> Logout </a></p>
<jsp:include page="recruitermenu.jsp"/>
<center>
<fieldset>
<legend>Search Results</legend>
<form action="jobseekersearchresult.jsp">
<input type="search" name="keyword" size="50%"><input type="submit" value="Search">
</form>
<% 
String search=request.getParameter("search");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/ojp";

con=DriverManager.getConnection(url,"root","");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from jobseekerprofile where username='"+search+"' or fname='"+search+"' or lname='"+search+"' or designation='"+search+"' or location='"+search+"' or experience='"+search+"' or email='"+search+"' or mobile='"+search+"' or keyskills='"+search+"' or projects='"+search+"' or itskills='"+search+"' or education='"+search+"' or certifications='"+search+"' or workdetails='"+search+"' or dob='"+search+"' or gender='"+search+"' or hometown='"+search+"' or pin='"+search+"' or maritialstatus='"+search+"' or languagesknown='"+search+"'"); 

while(rs.next())
{
%>

<hr width=30%>
<div class="recruitersearchresult">
<table width=30%>
<tr>
<td><b><a href="recruiterjobseekerprofile.jsp?user=<%=rs.getString("username") %>"><%=rs.getString("fname") %> <%=rs.getString("lname") %></a></b></td>
</tr>
<tr>
<td><%=rs.getString("designation") %></td>
</tr>
<tr>
<td><%=rs.getString("experience") %>Years</td>
</tr>
<tr>
<td><%=rs.getString("location") %></td>
</tr>
<tr>
<td><%=rs.getString("keyskills") %></td>
</tr>
</table>
</div>
<hr width=30%>

<%	
}
rs.close();
stmt.close();
con.close();
%>
</fieldset>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>