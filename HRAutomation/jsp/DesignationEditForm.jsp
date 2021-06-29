<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="DESIGNATION" />
<jsp:include page='/MasterPageTopSection.jsp'/>
<center>
<u><h2 style='font-family:Trebuchet MS;margin-top:100px'>Designation (Edit Module)</h2></u>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/minorproject/UpdateDesignation.jsp' onsubmit='return validateForm(this)'>
<input style='font-family:Trebuchet MS' type='text' id='title' name='title' maxlength='35' size='36' value='${designationBean.title}'>
<input type='hidden' id='code' name='code' value='${designationBean.code}'><br>
<span id='titleErrorSection' class='error'></span><br>
<table>
<tr>
<td>
<button style='font-family:Trebuchet MS' type='submit'>Update</button>&nbsp;&nbsp;
</td>
<td>
</form>
<form action='/minorproject/Designations.jsp'>
<button style='font-family:Trebuchet MS' type='submit'>Cancel</button>
</form> 
</td>
</tr>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>