<%@ page import="com.PAF.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% if (request.getParameter("patientName") != null)  
{  
	session.setAttribute("patientName", request.getParameter("patientName"));  
	session.setAttribute("age", request.getParameter("age"));  
	session.setAttribute("address", request.getParameter("address"));  
	session.setAttribute("phoneno", request.getParameter("phoneno"));  
	session.setAttribute("gender", request.getParameter("gender")); 
	
	Patient patientObj = new Patient();
	patientObj.connect();
	
	} 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Patient management</h1>
<form method="post" action="patients.jsp">
Patient Name: <input name="patientName" type="text"><br>
Patient Age: <input name="age" type="number"><br>
Patient Address: <input name="address" type="text"><br>
Patient phoneNo: <input name="phoneno" type="text"><br>
Patient gender: <input name="gender" type="text"><br>
<input name="btnSubmit" type="submit" value="Save">
</form>
<br>

<table border="1">
<tr>
<td>Patient Name</td>
<td>Patient Age</td>
<td>Patient Address</td>
<td>Patient phoneNo</td>
<td>Patient gender</td>
<td></td>
<td></td>
</tr>
<tr> 
<td><%out.print(session.getAttribute("patientName")); %></td> 
<td><%out.print(session.getAttribute("age")); %></td> 
<td><%out.print(session.getAttribute("address")); %></td> 
<td><%out.print(session.getAttribute("phoneno")); %></td> 
<td><%out.print(session.getAttribute("gender")); %></td> 
<td><input name="btnUpdate" type="button" value="Update"></td> 
<td><input name="btnRemove" type="button" value="Remove"></td> 
</tr> 
</table>

</body>
</html>