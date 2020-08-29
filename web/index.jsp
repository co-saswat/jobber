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
<center>
 <fieldset><legend>Login</legend>
<form name="form1" method="post" action="loginaction.jsp">
<table> 
<tr>
 <td align='center' colspan=2><input type="radio" name="usertype" value="jobseeker" required>JobSeeker <input type="radio" name="usertype" value="recruiter" required>Recruiter <input type="radio" name="usertype" value="admin" required>Admin </td>
</tr>
<tr>
<td>&nbsp</td>
</tr>
<tr>
<td>Username</td>
<td><input name="username" type="text" placeholder="Username" required></td>
</tr>
<tr>
<td>Password</td>
<td><input name="password" type="password" placeholder="Password" required></td>
</tr>
<tr>
<td></td>
<td align="center" colspan=2><input type="submit" name="Submit" value="Login"></td>
</tr>
</table>                                          
</form>
<a href="registration.jsp">Click here to register an Account</a>
</fieldset>
<jsp:include page="footer.jsp"/>
</center>
</body>
</html>