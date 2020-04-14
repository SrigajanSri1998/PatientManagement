package com;

import model.Patient;

//For REST Service 
import javax.ws.rs.*; 
import javax.ws.rs.core.MediaType; 


//For JSON 
import com.google.gson.*; 

//For XML 
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document; 

@Path("/Patient") 
public class PatientService {
	Patient patientObj = new Patient(); 
	 
	 @GET  
	 @Path("/")  
	 @Produces(MediaType.TEXT_HTML)  
	 public String readPatient()  {   
		 return patientObj.readPatient();
	}
	 
	 @POST 
	 @Path("/")
	 @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	 @Produces(MediaType.TEXT_PLAIN)
	 public String insertPatient(@FormParam("name") String name,  @FormParam("age") String age, @FormParam("gender") String gender, @FormParam("address") String address, @FormParam("phoneno") String phoneno) { 
		 String output = patientObj.insertPatient(name, age, gender, address, phoneno); 
		 return output; 
	 }
	 
	 
	
}
