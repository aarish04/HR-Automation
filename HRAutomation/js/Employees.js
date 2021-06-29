function Employee()
{
this.employeeId="";
this.name="";
this.designationCode=0;
this.designation="";
this.dateOfBirth="";
this.gender="";
this.isIndian=true;
this.basicSalary=0;
this.panNumber="";
this.aadharCardNumber="";
}
var selectedRow=null;
var employees=[];
var employee=new Employee();
employee.employeeId="A100008";
employee.name="Jignesh Matondkar";
employee.designationCode=14;
employee.designation="Clerk";
employee.dateOfBirth="01/01/1970";
employee.gender="M";
employee.isIndian=true;
employee.basicSalary=300000.00;
employee.panNumber="ABCD4321";
employee.aadharCardNumber="zyxw4321";
employees[0]=employee;
var employee=new Employee();
employee.employeeId="A100004";
employee.name="Lalita";
employee.designationCode=5;
employee.designation="Farmer";
employee.dateOfBirth="30/11/1995";
employee.gender="F";
employee.isIndian=true;
employee.basicSalary=700000.00;
employee.panNumber="AB12345";
employee.aadharCardNumber="UV12345";
employees[1]=employee;
var employee=new Employee();
employee.employeeId="A100009";
employee.name="Mohd. Munir Ali";
employee.designationCode=25;
employee.designation="Doctor";
employee.dateOfBirth="05/09/2008";
employee.gender="M";
employee.isIndian=true;
employee.basicSalary=9000000.00;
employee.panNumber="munir420";
employee.aadharCardNumber="munir420";
employees[2]=employee;
var employee=new Employee();
employee.employeeId="A100005";
employee.name="Sam Disoza";
employee.designationCode=16;
employee.designation="Manager";
employee.dateOfBirth="16/01/1970";
employee.gender="M";
employee.isIndian=false;
employee.basicSalary=900000.00;
employee.panNumber="ABCD1234";
employee.aadharCardNumber="PQRS1234";
employees[3]=employee;
var employee=new Employee();
employee.employeeId="A100007";
employee.name="Sumit Johri";
employee.designationCode=16;
employee.designation="Manager";
employee.dateOfBirth="21/01/1970";
employee.gender="M";
employee.isIndian=true;
employee.basicSalary=1000000.00;
employee.panNumber="W4321";
employee.aadharCardNumber="X4321";
employees[4]=employee;
function selectEmployee(row,employeeId)
{
if(row==selectedRow) return;
if(selectedRow!=null)
{
selectedRow.style.background="white";
selectedRow.style.color="black";
}
row.style.background="#7C7B7B";
row.style.color="white";
selectedRow=row;
var i;
for(i=0;i<employees.length;i++)
{
if(employees[i].employeeId==employeeId)
{
break; 
}
}  
var emp=employees[i];
document.getElementById("detailPanel_employeeId").innerHTML=emp.employeeId;
document.getElementById("detailPanel_name").innerHTML=emp.name;
document.getElementById("detailPanel_designation").innerHTML=emp.designation;
document.getElementById("detailPanel_dateOfBirth").innerHTML=emp.dateOfBirth;
document.getElementById("detailPanel_gender").innerHTML=emp.gender;
if(emp.isIndian)
{
document.getElementById("detailPanel_isIndian").innerHTML="Yes";
}
else
{
document.getElementById("detailPanel_isIndian").innerHTML="No";
}
document.getElementById("detailPanel_basicSalary").innerHTML=emp.basicSalary;
document.getElementById("detailPanel_panNumber").innerHTML=emp.panNumber;
document.getElementById("detailPanel_aadharCardNumber").innerHTML=emp.aadharCardNumber;
}
