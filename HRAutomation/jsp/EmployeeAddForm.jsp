<jsp:useBean id='employeeBean' scope='request' class='com.thinking.machines.hr.beans.EmployeeBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="EMPLOYEE" />
<jsp:include page='/MasterPageTopSection.jsp'/>
<script src='/minorproject/js/EmployeeAddForm.js'></script>
<center>
<u><h2 style='font-family:Trebuchet MS;margin-top:40px'>Employee (Add Module)</h2></u>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>

<form method='post' action='/minorproject/AddEmployee.jsp' onsubmit='return validateForm(this)'>
<tm:FormID />
<table>
<tr>
<td>Name</td>
<td><input type='text' id='name' name='name' maxlength='50' size='51'>
<span id='nameErrorSection' style='color:red'></span></td>
</tr>
<tr>
<td>Designation</td>
<td><select id='designationCode' name='designationCode'>
<option value='-1'>&lt;Select Designation&gt;</option>
<tm:EntityList populatorClass='com.thinking.machines.hr.bl.DesignationBL' populatorMethod='getAll' name='dBean'>
<option value=${dBean.code}>${dBean.title}</option>
</tm:EntityList>
</select>
<span id='designationCodeErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>Date of birth</td>
<td><input type='date' id='dateOfBirth' name='dateOfBirth' value='1990-01-01'>
<span id='dateOfBirthErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>Gender</td>
<td><input type='radio' id='male' name='gender' value='M'>Male
&nbsp;&nbsp;&nbsp;&nbsp;
<input type='radio' id='female' name='gender' value='F'>Female
<span id='genderErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>Indian ?</td>
<td><input type='checkbox' name='isIndian' id='isIndian' value='Y'>
</td>
</tr>
<tr>
<td>Basic Salary</td>
<td><input type='text' style='text-align:right' name='basicSalary' id='basicSalary' maxlength='12' size='13'>
<span id='basicSalaryErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>PAN Number</td>
<td><input type='text' id='panNumber' name='panNumber' maxlength='15' size='16'>
<span id='panNumberErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>Aadhar card number</td>
<td><input type='text' id='aadharCardNumber' name='aadharCardNumber' maxlength='15' size='16'>
<span id='aadharCardNumberErrorSection' style='color:red'></span>
</td>
</tr>
</table>
<table>
<td>
<br>
<button type='submit'>Add</button>
</form>
</td>
<td>
</form>
<br>
<form action='/minorproject/Employees.jsp'>
<button type='submit'>Cancel</button>
</form> 
</td>
</tr>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>