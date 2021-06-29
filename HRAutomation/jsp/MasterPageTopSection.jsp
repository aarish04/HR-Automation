<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm'%>
<tm:Guard>
<jsp:forward page='/LoginForm.jsp' />
</tm:Guard>
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
<div style='margin-left:1170px'>
<img src='/minorproject/images/user.png' />
<b style='color:snow'>${username}</b>&nbsp;&nbsp;
<a style='color:yellow;text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS' href='/minorproject/logout'>Logout</a>
</div>
</div> <!-- header ends here -->
<!-- content section starts here -->
<div class='content'>
<!-- left panel starts here -->
<div class='content-left-panel'>
<!--color: #ed490a; Color.-->
<!--background-color: #c0c0c0; Background.-->

<tm:If condition='${module==HOME}'>
<a style='text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS' href='/minorproject/Designations.jsp'>Designations</a><br><br>
<a style='text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS' href='/minorproject/Employees.jsp'>Employees</a><br>
</tm:If>

<tm:If condition='${module==DESIGNATION}'>
<b style='font-family:Trebuchet MS;text-decoration: none; border-bottom: 1px solid #6666FF'>Designations</b><br><br>
<a style='font-family:Trebuchet MS;text-decoration: none; border-bottom: 1px solid #6666FF' href='/minorproject/Employees.jsp'>Employees</a><br><br>
<a style='font-family:Trebuchet MS;text-decoration: none; border-bottom: 1px solid #6666FF' href='/minorproject/index.jsp'>Home</a><br>
</tm:If>

<tm:If condition='${module==EMPLOYEE}'>
<a style='font-family:Trebuchet MS;text-decoration: none; border-bottom: 1px solid #6666FF' href='/minorproject/Designations.jsp'>Designations</a><br><br>
<b style='font-family:Trebuchet MS;text-decoration: none; border-bottom: 1px solid #6666FF'>Employees</b><br><br>
<a style='font-family:Trebuchet MS;text-decoration: none; border-bottom: 1px solid #6666FF' href='/minorproject/index.jsp'>Home</a><br>
</tm:If>

</div>


<!-- left panel ends here -->
<!-- right panel starts here -->
<div class='content-right-panel'>
