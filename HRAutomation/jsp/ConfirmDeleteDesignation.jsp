<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean'/>
<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="DESIGNATION" />
<jsp:include page='/MasterPageTopSection.jsp'/>
<center>
<u><h2 style='font-family:Trebuchet MS;margin-top:100px'>Designation (Delete Module)</h2></u>
<form method='post' action='/minorproject/DeleteDesignation.jsp' onsubmit='return true'>
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
<p style='font-family:Trebuchet MS'>Are you sure you want to delete <b>${designationBean.title}</b> ?</p>
<table style='font-family:Trebuchet MS'>
<tr>
<td>
<button type='submit'>Yes</button>
</td>
<td>
</form>
<form action='/minorproject/Designations.jsp'>
&nbsp;&nbsp;
<button type='submit'>No</button>
</form> 
</td>
</tr>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>