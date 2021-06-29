<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="DESIGNATION" />
<jsp:include page='/MasterPageTopSection.jsp'/>
<script src='/minorproject/js/DesignationAddForm.js'></script>
<center>
<u><h2 style='font-family:Trebuchet MS;margin-top:100px'>Designation (Add Module)</h2></u>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/minorproject/AddDesignation.jsp' onsubmit='return validateForm(this)'>
<tm:FormID />
<input type='text' id='title' name='title' maxlength='35' size='36' value='${designationBean.title}'>
<span id='titleErrorSection' class='error'></span><br><br>
<table>
<tr>
<td>
<button type='submit'>Add</button>&nbsp;&nbsp;
</td>
<td>
</form>
<form action='/minorproject/Designations.jsp'>
<button type='submit'>Cancel</button>
</form> 
</td>
</tr>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>