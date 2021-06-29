<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name="DESIGNATION" />
<jsp:include page='/MasterPageTopSection.jsp' />
<center>
<u><h2 style='font-family:Trebuchet MS'>Designations</h2></u>
<table border='1'>
<thead>
<tr>
<th colspan='4' style='text-align:right;padding:5px'>
<a style='text-decoration: none; border-bottom: 1px solid #6666FF;font-family:Trebuchet MS' href='/minorproject/DesignationAddForm.jsp'>Add new designation</a>
</th>
</tr>
<tr>
<th style='width:60px;text-align:center;font-family:Trebuchet MS'>S.No.</th>
<th style='width:200px;text-align:center;font-family:Trebuchet MS'>Designation</th> 	
<th style='width:100px;text-align:center;font-family:Trebuchet MS'>Edit</th>
<th style='width:100px;text-align:center;font-family:Trebuchet MS'>Delete</th>
</tr>
</thead>
<tbody>
<tm:EntityList populatorClass='com.thinking.machines.hr.bl.DesignationBL' populatorMethod='getAll' name='dBean'>
<tr>
<td style='text-align:center;font-family:Trebuchet MS'>${serialNumber}.</td>
<td style='text-align:center;font-family:Trebuchet MS'>${dBean.title}</td>
<td style='text-align:center;font-family:Trebuchet MS'><a href='/minorproject/editDesignation?code=${dBean.code}'>Edit</a></td>
<td style='text-align:center;font-family:Trebuchet MS'><a href='/minorproject/confirmDeleteDesignation?code=${dBean.code}'>Delete</a></td>
</tr>
</tm:EntityList>
</tbody>
</table>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>