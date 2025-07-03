package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AppointmentModel;
import services.AppointmentServices;
import services.HospitalServices;

/**
 * Servlet implementation class UpdateAppointmentServlet
 */
@WebServlet("/UpdateAppointmentServlet")
public class UpdateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int appID = Integer.parseInt(request.getParameter("appId"));
		
		List<AppointmentModel> AppDetails = AppointmentServices.getAppointmentById(appID);
        request.setAttribute("Details", AppDetails);
        
        RequestDispatcher rd =  
                request.getRequestDispatcher("update_appointment.jsp"); 
        System.out.print("1 APP ID : "+AppDetails);
        
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 int AppID = Integer.parseInt(request.getParameter("App_ID"));
		 String venue = request.getParameter("venue");
		 String appDate = request.getParameter("appDate");
		 String appTime = request.getParameter("appTime");
		 int Count = Integer.parseInt(request.getParameter("Count"));
		 
		 AppointmentModel UpdateModel = new AppointmentModel();
		 UpdateModel.setApp_Date(appDate);
		 UpdateModel.setApp_Time(appTime);
		 UpdateModel.setVenue(venue);
		 UpdateModel.setPatientCount(Count);
		 UpdateModel.setApp_ID(AppID);
		 
		 AppointmentServices services = new AppointmentServices();
			
		services.updateAppointmentData(UpdateModel);
			
		//RequestDispatcher dis = request.getRequestDispatcher("update_appointment.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("Doctor_Portal.jsp");
			
		dis.forward(request, response);
	}

}
