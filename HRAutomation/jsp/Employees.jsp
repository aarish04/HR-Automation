<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='EMPLOYEE' />
<jsp:include page='/MasterPageTopSection.jsp'/>
<link rel='stylesheet' type='text/css' href='/minorproject/css/employees.css'>
<script src='/minorproject/js/Employees.js'></script>
<jsp:include page='/EmployeesJS.jsp'/>
<center>
<u><h2 class='employeeHeader'>Employees</h2></u>
<div class='employeeGrid'>
<table border='1'>
<thead>
<tr>
<th colspan='6' class='employeeGridHeader'>
<a class='employeeGridAddEmployeeOptionColumnTitle' href='/minorproject/EmployeeAddForm.jsp'>Add new employee</a>
</th>
</tr>
<tr>
<th class='employeeGridSNOColumnTitle'>S.No.</th>
<th class='employeeGridIdColumnTitle'>Id.</th>
<th class='employeeGridNameColumnTitle'>Name</th>
<th class='employeeGridDesignationColumnTitle'>Designation</th>
<th class='employeeGridEditOptionColumnTitle'>Edit</th>
<th class='employeeGridDeleteOptionColumnTitle'>Delete</th>
</tr>
</thead>
<tbody>
<tm:EntityList populatorClass='com.thinking.machines.hr.bl.EmployeeBL' populatorMethod='getAll' name='employeeBean'>
<tr style='cursor:pointer' onclick='selectEmployee(this,"${employeeBean.employeeId}")'>
<td class='employeesTableContent'>${serialNumber}</td>
<td class='employeesTableContent'>${employeeBean.employeeId}</td>
<td class='employeesTableContent'>${employeeBean.name}</td>
<td class='employeesTableContent'>${employeeBean.designation}</td>
<td class='employeesTableContent'><a href='/minorproject/editEmployee?employeeId=${employeeBean.employeeId}'>Edit</a></td>
<td class='employeesTableContent'><a href='/minorproject/confirmDeleteEmployee?employeeId=${employeeBean.employeeId}'>Delete</a></td>
</tm:EntityList>
</tr
</tbody>
</table>
</div>
</center>
<div style='height:19vh;margin-left:125px;background:gray;color:white;margin-right:142px;margin-bottom:px;margin-top:5px;padding:5px;border:1px solid white;'>
<label class='font' style='background:gray;color:snow;padding-left:5px;padding-right:5px;margin-left:50px'><u>Details</u></label>
<table border='0' width="100%" style='margin-left:50px;margin-top:10px'>
<tr>
<td class='font'>EmployeeId : <span id='detailPanel_employeeId' style='margin-right:30px'></span></td>
<td class='font'>Name : <span id='detailPanel_name' style='margin-right:30px'></span></td>
<td class='font'>Designation : <span id='detailPanel_designation' style='margin-right:30px'></span></td>
</tr>
<tr>
<td class='font'>Date of birth : <span id='detailPanel_dateOfBirth' style='margin-right:30px'></span></td>
<td class='font'>Gender : <span id='detailPanel_gender' style='margin-right:30px'></span></td>
<td class='font'>Is Indian : <span id='detailPanel_isIndian' style='margin-right:30px'></span></td>
</tr>
<tr>
<td class='font'>Basic Salary : <span id='detailPanel_basicSalary' style='margin-right:30px'></span></td>
<td class='font'>PAN number : <span id='detailPanel_panNumber' style='margin-right:30px'></span></td>
<td class='font'>Aadhar card number : <span id='detailPanel_aadharCardNumber' style='margin-right:30px'></span></td>
</tr>
</table>
</div>
<jsp:include page='/MasterPageBottomSection.jsp'/>