package services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import controller.DBConnect;
import model.DoctorModel;

public class AdminServices {
	
	// Insert new doctor into database
	public static void addDoctor(DoctorModel doc) {
		
		try {		
			String 	name = doc.getName();
			String 	special = doc.getSpecialization();
			String 	email = doc.getEmail();
			String 	contact = doc.getContact();
			String 	address	= doc.getAddress();
			int 	expe = doc.getExperience();	
			
			Statement stmt = DBConnect.getConnection().createStatement();
			
			// SQL query for add new doctor into Doctor table
			String sql = "INSERT INTO Doctor(Doc_Name, Specialization, Phone, Email, Doc_Address, Experience) VALUES('"+name+"', '"+special+"', '"+contact+"', '"+email+"', '"+address+"', '"+expe+"')";
			
			stmt.executeUpdate(sql);
			stmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	// View all doctors from database
	public static List<DoctorModel> viewDoctor() {
		
        List<DoctorModel> doctorList = new ArrayList<>();

        try {
        	Connection con =  DBConnect.getConnection();
            Statement stmt = con.createStatement();
            
            // SQL query for select all doctors details from Doctor table
            ResultSet rs = stmt.executeQuery("SELECT * FROM Doctor");

            while (rs.next()) {
            	DoctorModel docDetails = new DoctorModel();
            	
            	docDetails.setdoctorId(rs.getInt("Doctor_ID"));
            	docDetails.setName(rs.getString("Doc_Name"));
            	docDetails.setContact(rs.getString("Phone"));
            	docDetails.setSpecialization(rs.getString("Specialization"));
            	docDetails.setEmail(rs.getString("Email"));
            	docDetails.setExperience(rs.getInt("Experience"));
            	docDetails.setAddress(rs.getString("Doc_Address"));
            	
            	doctorList.add(docDetails);
            }
            
            System.out.print("DETAILS : "+doctorList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return doctorList;
    }
	
	
	// Get doctor details by doctor_id for update doctor details
	public static List<DoctorModel> viewDoctorById(int ID) {
		
        List<DoctorModel> docList = new ArrayList<>();

        try {
        	Connection con =  DBConnect.getConnection();
            Statement stmt = con.createStatement();
            
            // SQL query for select all doctors details from Doctor table
            ResultSet rs = stmt.executeQuery("SELECT * FROM Doctor where Doctor_ID = " + ID);

            while (rs.next()) {
            	DoctorModel doctorDetails = new DoctorModel();
            	
            	doctorDetails.setdoctorId(rs.getInt("Doctor_ID"));
            	doctorDetails.setName(rs.getString("Doc_Name"));
            	doctorDetails.setContact(rs.getString("Phone"));
            	doctorDetails.setEmail(rs.getString("Email"));
            	
            	docList.add(doctorDetails);
            }
            
            System.out.print("DETAILS : " + docList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return docList;
    }
	
	
	// Update doctor details in database
	public static void updateDoctor(DoctorModel updateDoc) {
		
		try {
			int 	docId = updateDoc.getdoctorId();
			String 	docName = updateDoc.getName();
			String 	docContact = updateDoc.getContact();
			String 	docEmail = updateDoc.getEmail();
			
			Statement stmt = DBConnect.getConnection().createStatement();
			
			// SQL query for update doctor 'name', 'contact number' and 'email' in Doctor table
			String sql = "UPDATE Doctor SET Doc_Name = '" + docName + "'" + ",Phone = " + "'" + docContact + "'" + ",Email = " + "'" + docEmail + "'" 
			        + " WHERE Doctor_ID = " + docId + ";";
			
			System.out.print("DETAILS : " + sql);
			stmt.executeUpdate(sql);
			stmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	// Delete all relevant doctor details in database
	public static void deleteDoctor(int id) {
		
		try {
			Statement stmt1 = DBConnect.getConnection().createStatement();
			Statement stmt2 = DBConnect.getConnection().createStatement();
			
			// SQL query for delete all records related to relevant doctor_id in Appointment table
			String query = "DELETE FROM Appointment WHERE Doctor_ID =" + id + ";";
			stmt1.executeQuery(query);
			
			// SQL query for delete doctor details related to relevant doctor_id in Doctor table
			String query2 = "DELETE FROM Doctor WHERE Doctor_ID =" + id + ";";
			stmt2.executeQuery(query2);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
