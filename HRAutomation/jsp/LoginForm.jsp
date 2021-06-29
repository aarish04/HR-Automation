<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<!DOCTYPE html>
<html lang='en'>
<head>
<title>HR APPLICATION</title>
<link rel='stylesheet' type='text/css' href='/minorproject/css/styles.css'>
</head>
<body>
<!-- Main container starts here -->
<div class='main-container'>
<!-- Header starts here -->
<div class='header'>
<br>
<img src='/minorproject/images/logo.png' class='logo'>
<div class='brand-name' style='font-family:Trebuchet MS;color:snow'>HR Automation</div>
<br>
<br>
</div> <!-- header ends here -->
<!-- content section starts here -->
<div style="background-image: url('/minorproject/images/background.jpg');">
<center>
<div class='content'>
<div class='loginForm'>
<form action='/minorproject/Login.jsp' method='post'>
<div style='margin-top:140px;width:330px;height:150px;background-color:hsla(89, 43%, 51%, 0.3)'>
<br>
<table>
<tr>
<td colspan='2' align='center'>
<span class='error'>
${errorBean.error}
</span>
</td>
</tr>
<tr>
<br>
<td style='font-family:Trebuchet MS;color:snow;background-color:black'>Username</td>
<td><input type='text' name='username' id='username' maxlength='15'></td>
</tr>
<tr>
<td style='font-family:Trebuchet MS;color:snow;background-color:black'>Password</td>
<td><input type='password' name='password' id='password' maxlength='15'></td>
</tr>
<tr>
<td colspan='2' align='center'>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;
<button style='font-family:Trebuchet MS' type='submit'><b>Login</b></button>
</tr>
</table>
</form>
</div>
</div>
</div> <!-- content section ends here -->
</center>
</div>
<!-- footer starts here -->
<div class='footer'>
<h5><p style='font-family:Trebuchet MS;color:Snow;background-color:black'>&copy; HR Automation 2021</p></h5>
</div>
<!-- footer ends here -->
</div> <!--Main container ends here -->
</body>
</html>