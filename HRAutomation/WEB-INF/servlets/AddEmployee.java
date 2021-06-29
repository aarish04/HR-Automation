package com.thinking.machines.hr.servlets;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.text.*;
import java.util.*;
import java.math.*;
public class AddEmployee extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
EmployeeBean employeeBean;
employeeBean=(EmployeeBean)request.getAttribute("employeeBean");
EmployeeDTO employee=new EmployeeDTO();
String name=employeeBean.getName();
employee.setName(name);
int designationCode=employeeBean.getDesignationCode();
employee.setDesignationCode(designationCode);
Date dateOfBirth=simpleDateFormat.parse(employeeBean.getDateOfBirth());
employee.setDateOfBirth(dateOfBirth);
String gender=employeeBean.getGender();
employee.setGender(gender);
String isIndian=request.getParameter("isIndian");
if(isIndian==null)
{
employee.setIsIndian(false);
}
else
{
employee.setIsIndian(true);
}
BigDecimal basicSalary=new BigDecimal(employeeBean.getBasicSalary());
employee.setBasicSalary(basicSalary);
String panNumber=employeeBean.getPanNumber();
employee.setPanNumber(panNumber);
String aadharCardNumber=employeeBean.getAadharCardNumber();
employee.setAadharCardNumber(aadharCardNumber);
EmployeeDAO employeeDAO=new EmployeeDAO();
try
{
employeeDAO.add(employee);
employeeBean.setEmployeeId(employee.getEmployeeId());
MessageBean messageBean;
messageBean=new MessageBean();
messageBean.setHeading("Employee (Add Module)");
messageBean.setMessage("Employee added, add more ?");
messageBean.setGenerateButtons(true);
messageBean.setGenerateTwoButtons(true);
messageBean.setButtonOneText("Yes");
messageBean.setButtonOneAction("EmployeeAddForm.jsp");
messageBean.setButtonTwoText("No");
messageBean.setButtonTwoAction("Employees.jsp");
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
requestDispatcher=request.getRequestDispatcher("/EmployeeAddForm.jsp");
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