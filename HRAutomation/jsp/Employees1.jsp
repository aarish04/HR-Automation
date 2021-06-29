<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="EMPLOYEE" />
<jsp:include page='/MasterPageTopSection.jsp' />
<center>
<u><h2 style='font-family:Trebuchet MS'>Employees</h2></u>
<table border='1'>
<thead>
<tr>
<th colspan='5' style='text-align:right;padding:5px'>
<a style='text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS' href='/minorproject/EmployeeAddForm.jsp'>Add new employee</a>
</th>
</tr>
<tr>
<th style='width:60px;text-align:center;font-family:Trebuchet MS'>S.No.</th>
<th style='width:60px;text-align:center;font-family:Trebuchet MS'>Emp.ID.</th>
<th style='width:200px;text-align:center;font-family:Trebuchet MS'>Name</th> 	
<th style='width:100px;text-align:center;font-family:Trebuchet MS'>Edit</th>
<th style='width:100px;text-align:center;font-family:Trebuchet MS'>Delete</th>
</tr>
</thead>
<tbody>
<tm:Employees>
<tr>
<td style='text-align:right;font-family:Trebuchet MS'>${serialNumber}.</td>
<td style='text-align:right;font-family:Trebuchet MS'>${employeeBean.employeeId}.</td>
<td style='font-family:Trebuchet MS'>${employeeBean.name}</td>
<td style='text-align:center;text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS'><a href='/minorproject/editEmployee?code=${employeeBean.employeeId}'>Edit</a></td>
<td style='text-align:center;text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS'><a href='/minorproject/confirmDeleteEmployee?id=${employeeBean.employeeId}'>Delete</a></td>
</tr>
</tm:Employees>
</tbody>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>