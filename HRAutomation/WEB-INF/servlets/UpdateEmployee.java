package com.thinking.machines.hr.servlets;
import javax.servlet.*;
import javax.servlet.http.*;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import java.util.*;
import java.math.*;
import java.text.*;
public class UpdateEmployee extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
EmployeeBean employeeBean;
employeeBean=(EmployeeBean)request.getAttribute("employeeBean");
SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
EmployeeDTO employeeDTO=new EmployeeDTO();
employeeDTO.setEmployeeId(employeeBean.getEmployeeId());
employeeDTO.setName(employeeBean.getName());
employeeDTO.setDesignationCode(employeeBean.getDesignationCode());
employeeDTO.setDesignation(employeeBean.getDesignation());
employeeDTO.setDateOfBirth(simpleDateFormat.parse(employeeBean.getDateOfBirth()));
employeeDTO.setGender(employeeBean.getGender());
String isIndian=request.getParameter("isIndian");
if(isIndian==null)
{
employeeDTO.setIsIndian(false);
}
else
{
employeeDTO.setIsIndian(true);
}
employeeDTO.setBasicSalary(new BigDecimal(employeeBean.getBasicSalary()));
employeeDTO.setPanNumber(employeeBean.getPanNumber());
employeeDTO.setAadharCardNumber(employeeBean.getAadharCardNumber());
EmployeeDAO employeeDAO=new EmployeeDAO();
try
{
employeeDAO.update(employeeDTO);
MessageBean messageBean=new MessageBean();
messageBean.setHeading("Employee (Edit Module)");
messageBean.setMessage("Employee Updated");
messageBean.setGenerateButtons(true);
messageBean.setGenerateTwoButtons(false);
messageBean.setButtonOneText("Ok");
messageBean.setButtonOneAction("Employees.jsp");
request.setAttribute("messageBean",messageBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/Notification.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/EmployeeEditForm.jsp");
requestDispatcher.forward(request,response);
}
}catch(Exception exception)
{
System.out.println(exception);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/ErrorPage.jsp");
try
{
requestDispatcher.forward(request,response);
}catch(Exception e)
{
// do nothing
}
}
}
}