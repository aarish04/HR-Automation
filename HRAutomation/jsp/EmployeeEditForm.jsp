<jsp:useBean id='employeeBean' scope='request' class='com.thinking.machines.hr.beans.EmployeeBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="EMPLOYEE" />
<jsp:include page='/MasterPageTopSection.jsp'/>
<script src='/minorproject/js/EmployeeEditForm.js'></script>
<center>
<u><h2 style='font-family:Trebuchet MS;margin-top:40px'>Employee (Edit Module)</h2></u>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/minorproject/UpdateEmployee.jsp' onsubmit='return validateForm(this)'>
<input type='hidden' name='employeeId' id='employeeId' value='${employeeBean.employeeId}'>
<table>
<tr>
<td>Name</td>
<td><input type='text' id='name' name='name' maxlength='50' size='51' value='${employeeBean.name}'>
<span id='nameErrorSection' style='color:red'></span></td>
</tr>
<tr>
<td>Designation</td>
<td><select id='designationCode' name='designationCode'>
<option value='${employeeBean.designationCode}'>${employeeBean.designation}</option>
<tm:EntityList populatorClass='com.thinking.machines.hr.bl.DesignationBL' populatorMethod='getAll' name='dBean'>
<option value=${dBean.code}>${dBean.title}</option>
</tm:EntityList>
</select>
<span id='designationCodeErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>Date of birth</td>
<td><input type='date' id='dateOfBirth' name='dateOfBirth' value='${employeeBean.dateOfBirth}'>
<span id='dateOfBirthErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<%
String m;
String f;
String gender=employeeBean.getGender();
if(gender.equals("M"))
{
%>
<td>Gender</td>
<td><input checked type='radio' id='male' name='gender' value='M'>Male
&nbsp;&nbsp;&nbsp;&nbsp;
<input type='radio' id='female' name='gender' value='F'>Female
<span id='genderErrorSection' style='color:red'></span>
</td>
<%
}
if(gender.equals("F"))
{
%>
<td>Gender</td>
<td><input type='radio' id='male' name='gender' value='M'>Male
&nbsp;&nbsp;&nbsp;&nbsp;
<input checked type='radio' id='female' name='gender' value='F'>Female
<span id='genderErrorSection' style='color:red'></span>
</td>
<%
}
%>
</tr>
<tr>
<%
boolean isIndian=employeeBean.getIsIndian();
if(isIndian==true)
{
%>
<td>Indian ?</td>
<td><input checked type='checkbox' name='isIndian' id='isIndian' value='Y'>
</td>
<%
}
else
{
%>
<td>Indian ?</td>
<td><input type='checkbox' name='isIndian' id='isIndian' value='Y'>
</td>
<%
}
%>
</tr>
<tr>
<td>Basic Salary</td>
<td><input type='text' style='text-align:right' name='basicSalary' id='basicSalary' maxlength='12' size='13' value='${employeeBean.basicSalary}'>
<span id='basicSalaryErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>PAN Number</td>
<td><input type='text' id='panNumber' name='panNumber' maxlength='15' size='16' value='${employeeBean.panNumber}'>
<span id='panNumberErrorSection' style='color:red'></span>
</td>
</tr>
<tr>
<td>Aadhar card number</td>
<td><input type='text' id='aadharCardNumber' name='aadharCardNumber' maxlength='15' size='16' value='${employeeBean.aadharCardNumber}'>
<span id='aadharCardNumberErrorSection' style='color:red'></span>
</td>
</tr>
</table>
<span id='titleErrorSection' class='error'></span><br>
<table>
<tr>
<td>
<button style='font-family:Trebuchet MS' type='submit'>Update</button>&nbsp;&nbsp;
</td>
<td>
</form>
<form action='/minorproject/Employees.jsp'>
<button style='font-family:Trebuchet MS' type='submit'>Cancel</button>
</form> 
</td>
</tr>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>