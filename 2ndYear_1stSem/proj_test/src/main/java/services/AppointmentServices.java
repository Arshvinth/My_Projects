package services;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import controller.DBConnect;

import model.AppointmentModel;
import model.PrescriptionModel;

public class AppointmentServices {
	public static List<AppointmentModel> getAppointment(){
		List <AppointmentModel> details = new ArrayList <AppointmentModel>();
			try {
				Statement st, st2;
				Connection con =  DBConnect.getConnection();
				st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM Appointment");
				
				while(rs.next()) {
					AppointmentModel appDetails = new AppointmentModel();
					appDetails.setApp_ID(rs.getInt("Appointment_ID"));
					appDetails.setApp_Time(rs.getString("App_Time"));
					appDetails.setComments(rs.getString("Comments"));
					appDetails.setApp_Date(rs.getString("App_Date"));
					appDetails.setVenue(rs.getString("Venue"));
					
					st2 = con.createStatement();
	                
	                String patientQry = "SELECT Appointment_ID,COUNT(Patient_ID) AS 'Patient_Count'  FROM Patient WHERE Appointment_ID = " +  rs.getInt("Appointment_ID") + "GROUP BY Appointment_ID;";
	                ResultSet patientCountResult = st2.executeQuery(patientQry);
	                appDetails.setPatientCount(0);
	                
	                while(patientCountResult.next()) {
	                	appDetails.setPatientCount(patientCountResult.getInt("Patient_Count"));
	                }
				
					details.add(appDetails);
					
				}
				System.out.print("DETAILS : "+details);
			} catch (Exception e) {
				e.printStackTrace();
			}
		return details;
	}
	
	
	
	public static List<AppointmentModel> getAppointmentById(int ID){
		List <AppointmentModel> details = new ArrayList <AppointmentModel>();
			try {
				Statement st, st2;
				Connection con =  DBConnect.getConnection();
				st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM Appointment WHERE Appointment_ID = "+ID);
				
				while(rs.next()) {
					AppointmentModel appDetails = new AppointmentModel();
					appDetails.setApp_ID(rs.getInt("Appointment_ID"));
					appDetails.setApp_Time(rs.getString("App_Time"));
					appDetails.setComments(rs.getString("Comments"));
					appDetails.setApp_Date(rs.getString("App_Date"));
					
					st2 = con.createStatement();
	                
	                String patientQry = "SELECT Appointment_ID,COUNT(Patient_ID) AS 'Patient_Count'  FROM Patient WHERE Appointment_ID = " +  rs.getInt("Appointment_ID") + "GROUP BY Appointment_ID;";
	                ResultSet patientCountResult = st2.executeQuery(patientQry);
	                appDetails.setPatientCount(0);
	                
	                while(patientCountResult.next()) {
	                	appDetails.setPatientCount(patientCountResult.getInt("Patient_Count"));
	                }
				
					details.add(appDetails);
					
				}
				System.out.print("DETAILS : "+details);
			} catch (Exception e) {
				e.printStackTrace();
			}
		return details;
	}
	public void updateAppointmentData(AppointmentModel UpdateModel) {
		try {
			int appID = UpdateModel.getApp_ID();
			String date = UpdateModel.getApp_Date();
			String time = UpdateModel.getApp_Time();
			String venue = UpdateModel.getVenue();

			
			Statement stmt = DBConnect.getConnection().createStatement();
			
			String sql = "UPDATE Appointment SET App_Date = '" + date + "'" + ",App_Time = " + "'" + time + "'" + ",Venue = " + "'" + venue + "'"
						+ " WHERE Appointment_ID = "+ appID +";";
			
			System.out.print("DETAILS : "+sql);
			stmt.executeUpdate(sql);
			stmt.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void deleteAppointmentByID(int id) {
		try {
			Statement stmt1 = DBConnect.getConnection().createStatement();
			Statement stmt2 = DBConnect.getConnection().createStatement();
			ResultSet patientDetail = null;
		
			String query2 = "SELECT Patient_ID FROM Patient WHERE Appointment_ID =" + id + ";";
			patientDetail = stmt1.executeQuery(query2);
			
			if(patientDetail != null) {
				while(patientDetail.next())
				{
					String query3 = "UPDATE Patient SET Appointment_ID = NULL WHERE Appointment_ID =" + id + ";";
					stmt1.executeQuery(query3);
				}
			}
			
			String query3 = "DELETE FROM Appointment WHERE Appointment_ID =" + id + ";";
			stmt2.execute(query3);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
