<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Patient management</h1>
<form>
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
</tr>
</table>

</body>
</html>