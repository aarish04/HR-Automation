<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm'%>
<jsp:useBean id='messageBean' scope='request' class='com.thinking.machines.hr.beans.MessageBean'/>
<jsp:include page='/MasterPageTopSection.jsp'/>
<center>
<u><h2 style='margin-top:100px'><jsp:getProperty name='messageBean' property='heading'/></h2></u>
${messageBean.message}<br><br>
<tm:If condition='${messageBean.generateButtons}'>
<table>
<tr>
<td>
<form action='/minorproject/${messageBean.buttonOneAction}'>
<button>${messageBean.buttonOneText}</button>
</form>
</td>
<tm:If condition='${messageBean.generateTwoButtons}'> 
<td>
<form action='/minorproject/${messageBean.buttonTwoAction}'>
<button>${messageBean.buttonTwoText}</button>
</form>
</td>
</tm:If>
</tr>
</table>
</center>
</tm:If>
<jsp:include page='/MasterPageBottomSection.jsp'/>