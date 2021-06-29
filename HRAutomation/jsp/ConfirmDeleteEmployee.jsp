<jsp:useBean id='employeeBean' scope='request' class='com.thinking.machines.hr.beans.EmployeeBean'/>
<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="EMPLOYEE" />
<jsp:include page='/MasterPageTopSection.jsp'/>
<center>
<u><h2 style='font-family:Trebuchet MS;margin-top:100px'>Employee (Delete Module)</h2></u>
<form method='post' action='/minorproject/DeleteEmployee.jsp' onsubmit='return true'>
<input type='hidden' id='employeeId' name='employeeId' value='${employeeBean.employeeId}'>
<p style='font-family:Trebuchet MS'>Are you sure you want to delete <b>${employeeBean.name}</b> ?</p>
<table style='font-family:Trebuchet MS'>
<tr>
<td>
<button type='submit'>Yes</button>
</td>
<td>
</form>
<form action='/minorproject/Employees.jsp'>
&nbsp;&nbsp;
<button type='submit'>No</button>
</form> 
</td>
</tr>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>