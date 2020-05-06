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
	 public String insertPatient(@FormParam("patientName") String name,  @FormParam("age") String age, @FormParam("gender") String gender, @FormParam("address") String address, @FormParam("phoneno") String phoneno) { 
		 String output = patientObj.insertPatient(name, age, gender, address, phoneno); 
		 return output; 
	 }
	 
	 @PUT
		@Path("/")
		@Consumes(MediaType.APPLICATION_JSON)
		@Produces(MediaType.TEXT_PLAIN)
		public String updatePatient(String patientData) {
			// Convert the input string to a JSON object
			JsonObject patientObject = new JsonParser().parse(patientData).getAsJsonObject();
			// Read the values from the JSON object
			String patientID = patientObject.get("patientID").getAsString();
			String name = patientObject.get("name").getAsString();
			String age = patientObject.get("age").getAsString();
			String gender = patientObject.get("gender").getAsString();
			String address = patientObject.get("address").getAsString();
			String phoneno = patientObject.get("phoneno").getAsString();
			String output = patientObj.updatePatient(patientID, name ,age , gender, address, phoneno );

			return output;
		}

		@DELETE
		@Path("/")
		@Consumes(MediaType.APPLICATION_XML)
		@Produces(MediaType.TEXT_PLAIN)
		public String deletePatient(String patientData) {
			// Convert the input string to an XML document
			Document doc = Jsoup.parse(patientData, "", Parser.xmlParser());
			// Read the value from the element <patientID>
			String patientID = doc.select("patientID").text();
			String output = patientObj.deletePatient(patientID);
			return output;
		}

	
}
