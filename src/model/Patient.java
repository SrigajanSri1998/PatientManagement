package model;
import java.sql.*;

public class Patient {
	private Connection connect()  
	{   
		Connection con = null; 
	
	 
		try   
		{     
			Class.forName("com.mysql.jdbc.Driver");          
			
			//Provide the  details: DBServer/DBName, user name, password     
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/patientmanagement", "root", "");   
			}   
		catch (Exception e)   
		{
			e.printStackTrace();
		}
			return con;  
		
	} 
	 
	 public String insertPatient(String name, String age, String gender, String address, String phoneno)  
	 {   
		 String output = ""; 
	 
		 try   
		 {    
			 Connection con = connect(); 
		 
	 
			 if (con == null)    
			 {return "Error while connecting to the database for inserting."; } 
	 
			 // create a prepared statement    
			 String query = " insert into patient           (`patientName`,`phoneNo`,`age`,`gender`,`patientAddress`)"      + " values (?, ?, ?, ?, ?)"; 
	 
			 PreparedStatement preparedStmt = con.prepareStatement(query); 
	 
			 // binding values    
			 preparedStmt.setString(1, name);    
			 preparedStmt.setString(2, phoneno);    
			 preparedStmt.setString(3, age);    
			 preparedStmt.setString(4, gender);    
			 preparedStmt.setString(5, address); 
			
			 // execute the statement    
			 preparedStmt.execute();    
			 con.close(); 
			 
			 output = "Inserted successfully";   
		}   
		 catch (Exception e)   
		 {    
			 output = "Error while inserting the item.";    
			 System.err.println(e.getMessage());   
		 }
			 
			  return output; 
	 }
	 
	 public String readItems()  
	 {   
		 String output = ""; 
	 
	 
		 try   {    
			 Connection con = connect(); 
		 
			 if (con == null)    {
				 return "Error while connecting to the database for reading."; 
			 }
	 
			 // Prepare the html table to be displayed    
			 output = "<table border=\"1\"><tr><th>PatientId</th><th>Patient Name</th><th>PhoneNo     "
			 		+ "		</th><th>Age</th><th>Gender</th><th>Address</th></tr>"; 
	 
			 String query = "select * from patient";    
			 Statement stmt = con.createStatement();    
			 ResultSet rs = stmt.executeQuery(query); 
	 
			 // iterate through the rows in the result set    
			 while (rs.next())    
			 {     
				 String patientId = Integer.toString(rs.getInt("patientId"));     
				 String patientName = rs.getString("patientName");     
				 String phoneno = rs.getString("phoneNo");     
				 String age = Integer.toString(rs.getInt("age"));     
				 String gender = rs.getString("gender"); 
				 String address = rs.getString("address");
			 
	 
				 // Add into the html table     
				 output += "<tr><td>" + patientId + "</td>";     
				 output += "<td>" + patientName + "</td>";     
				 output += "<td>" + phoneno + "</td>";     
				 output += "<td>" + age + "</td>"; 
				 output += "<td>" + gender + "</td>"; 
				 output += "<td>" + address + "</td>"; 
	 
				 // buttons     
				 output += "<td><input name=\"btnUpdate\" type=\"button\"        value=\"Update\" class=\"btn btn-secondary\"></td>"      
						 + "<td><form method=\"post\" action=\"patients.jsp\">"      
						 + "<input name=\"btnRemove\" type=\"submit\" value=\"Remove\"      class=\"btn btn-danger\">"      
						 + "<input name=\"itemID\" type=\"hidden\" value=\"" + patientId      
						 + "\">" + "</form></td></tr>";    
			 } 
	 
			 	con.close(); 
	 
			 	// Complete the html table    
			 	output += "</table>";   
		}   
		 catch (Exception e)   
		 {    
			 output = "Error while reading the items.";    
			 System.err.println(e.getMessage());   
		 } 
	 
	  return output;  
	}
	 
}
	  
