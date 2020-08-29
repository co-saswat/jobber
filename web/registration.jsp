<!DOCTYPE html>
<html>
<head>
	<title>registration</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title> Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" type="text/css" href="Doc/css/1.css">
</head>
<body>
    <h1>Registration</h1>
    <fieldset>
    <legend>Registration Form</legend>
    <p style="color:red;" id="divCheckPasswordMatch"></p>
    <form method="post" action="registrationaction.jsp" name="myForm">
    <table align='center'>
    <tr>
       <td align='center' colspan=2><input type="radio" name="usertype" value="jobseeker" required>JobSeeker <input type="radio" name="usertype" value="recruiter" required>Recruiter </td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
    ����<td align='left'>Username</td>
    ����<td><input type='text' name='username' placeholder="Username" required></td>
    </tr>
    
    <tr>
    ����<td align='left'>Password</td>
    ����<td> <input type="password" name="password" placeholder="Password" id="password" required></td>
    </tr>
    
    <tr>
    ����<td align='left'>Confirm Password</td>
    ����<td><input type="password" placeholder="Confirm Password" id="confirm_password" onChange="checkPasswordMatch();" onClick="style.backgroundColor='white'" required ></td>
    </tr>
    
    <script type="text/javascript">
    function checkPasswordMatch()
    {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
    
        if (password != confirmPassword)
            {
            document.getElementById("divCheckPasswordMatch").innerHTML="Passwords do not match!";
            document.getElementById("confirm_password").style.backgroundColor="red";
            }
    }
    </script>
    
    <table align='center'>
    <tr>
    ����<td align='center'><input type='submit' name='register' value="Register"></td>
    </tr>
    </table>
    </form>
	<div class="hint-text">Already have an account? <a href="signup.html">Login here</a></div>
</div>
</body>
</html>
</body>
</html>