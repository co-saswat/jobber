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
</head>
<body>
<%
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
%>
<% 
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String company=request.getParameter("company");
String designation=request.getParameter("designation");
String location=request.getParameter("location");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String gender=request.getParameter("gender");

 Connection con=null;
 Statement stmt=null;
 ResultSet rs=null;
 ResultSet rs1=null;
 ResultSet rs2=null;
 ResultSet rs3=null;
 
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/ojp";

  con=DriverManager.getConnection(url,"root","");
  stmt=con.createStatement();
  
  rs=stmt.executeQuery("select * from login where username='"+username+"' and usertype='"+usertype+"' ");
  if(rs.next())
  {
  rs1=stmt.executeQuery("select * from recruiterprofile where username='"+username+"'");
	  if(rs1.next())
	  {
            stmt.executeUpdate("update recruiterprofile set username='"+username+"' , fname='"+fname+"' , lname='"+lname+"' , company='"+company+"' , designation='"+designation+"' , location='"+location+"' , email='"+email+"' , mobile='"+mobile+"' , gender='"+gender+"' where username='"+username+"' ");     
	  }
	  else
	  {
            stmt.executeUpdate("insert into recruiterprofile values('"+username+"','"+fname+"','"+lname+"','"+company+"','"+designation+"','"+location+"','"+email+"','"+mobile+"','"+gender+"')");     
	  }
	 
	  stmt.close();
	  con.close();
  }
  response.sendRedirect("recruiterprofile.jsp");
  
%>
</body>
</html>