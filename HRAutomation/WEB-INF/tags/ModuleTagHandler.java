package com.thinking.machines.hr.tags;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
public class ModuleTagHandler extends TagSupport
{
private String name;
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
public ModuleTagHandler()
{
reset();
}
private void reset()
{
this.name="";
}
public int doStartTag()
{
if(name=="HOME")
{
pageContext.setAttribute("module",0,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("HOME",0,pageContext.REQUEST_SCOPE);
}
if(name=="DESIGNATION")
{
pageContext.setAttribute("module",1,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("DESIGNATION",1,pageContext.REQUEST_SCOPE);
}
if(name=="EMPLOYEE")
{
pageContext.setAttribute("module",2,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("EMPLOYEE",2,pageContext.REQUEST_SCOPE);
}
return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}