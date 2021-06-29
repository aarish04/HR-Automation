package com.thinking.machines.hr.tags;
import java.util.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import com.thinking.machines.hr.beans.*;
import com.thinking.machines.hr.dl.*;
public class EmployeesTagHandler extends BodyTagSupport
{
private List<EmployeeBean> employees;
private int index;
public EmployeesTagHandler()
{
reset();
}
private void reset()
{
index=0;
if(employees!=null)
{
employees.clear();
employees=null;
}
}
public int doStartTag()
{
List<EmployeeDTO> dlEmployees=null;
try
{
dlEmployees=(new EmployeeDAO()).getAll();
}catch(DAOException daoException)
{
System.out.println(daoException); //remove after testing
return super.SKIP_BODY;
}
if(dlEmployees.size()==0) return super.SKIP_BODY;
employees=new ArrayList<>();
EmployeeBean employeeBean;
for(EmployeeDTO dlEmployee:dlEmployees)
{
employeeBean=new EmployeeBean();
employeeBean.setEmployeeId(dlEmployee.getEmployeeId());
employeeBean.setName(dlEmployee.getName());
employees.add(employeeBean);
}
index=0;
employeeBean=employees.get(index);
pageContext.setAttribute("employeeBean",employeeBean,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",new Integer(index+1));
return super.EVAL_BODY_INCLUDE;
}
public int doAfterBody()
{
index++;
if(employees.size()==index) return super.SKIP_BODY;
EmployeeBean employeeBean;
employeeBean=employees.get(index);
pageContext.setAttribute("employeeBean",employeeBean,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",new Integer(index+1));
return super.EVAL_BODY_AGAIN;
}
public int doEndTag()
{
reset();
return super.EVAL_PAGE;
}
}