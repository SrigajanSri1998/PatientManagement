
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Patient"%>
<% if (request.getParameter("patientName") != null && request.getParameter("age") != null && request.getParameter("address") != null && request.getParameter("phoneno")!= null &&  request.getParameter("gender")!= null)  
{  
	session.setAttribute("patientName", request.getParameter("patientName"));  
	session.setAttribute("age", request.getParameter("age"));  
	session.setAttribute("address", request.getParameter("address"));  
	session.setAttribute("phoneno", request.getParameter("phoneno"));  
	session.setAttribute("gender", request.getParameter("gender")); 
	
	
} 
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css"> 

<script src="js/jquery.min.js" type="text/javascript"></script>
<title>Patient</title>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-4">

				<h1>Patients</h1>

				<form id="formItem" name="formItem">

					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">patientId:
							</span>
						</div>
						<input id="patientid" name="patientid" type="text"
							class="form-control form-control-sm">
					</div>
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">patientName:
							</span>
						</div>
						<input id="phoneName" name="phoneName" type="text"
							class="form-control form-control-sm">
					</div><div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">phoneNo:
							</span>
						</div>
						<input id="phoneNo" name="phoneNo" type="text"
							class="form-control form-control-sm">
					</div><div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">age:
							</span>
						</div>
						<input id="age" name="age" type="text"
							class="form-control form-control-sm">
					</div><div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">gender:
							</span>
						</div>
						<input id="gender" name="gender" type="text"
							class="form-control form-control-sm">
					</div><div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">patientAddress:
							</span>
						</div>
						<input id="patientAddress" name="patientAddress" type="text"
							class="form-control form-control-sm">
					</div>
					




					<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>

				<div id="alertError" class="alert alert-danger"></div>


			</div>
			<div class='col-12'>
				<div id="divItemsGrid">

					<%
					Patient PatientObj=new Patient();
					out.print(PatientObj.readPatient());
					%>
				</div>

			</div>
		</div>
	</div>

</body>
</html>