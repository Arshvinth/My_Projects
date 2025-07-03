package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DoctorModel;
import services.AdminServices;

@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateDoctorServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int docId = Integer.parseInt(request.getParameter("Doctor_ID"));
		
		List<DoctorModel> docDetails = AdminServices.viewDoctorById(docId);
		request.setAttribute("Details", docDetails);
		
		RequestDispatcher rd = request.getRequestDispatcher("update_doc.jsp"); 
        System.out.print("Doctor_Id : " + docDetails);
        
        rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int		docId = Integer.parseInt(request.getParameter("Doctor_ID"));
		int		expe = Integer.parseInt(request.getParameter("Experience"));
		String 	name = request.getParameter("Doc_Name");
		String 	email = request.getParameter("Email");
		String 	contact = request.getParameter("Phone");
		String	special = request.getParameter("Specialization");
		String	address = request.getParameter("Doc_Address");
		
		DoctorModel docUpdate = new DoctorModel();
		
		docUpdate.setdoctorId(docId);
		docUpdate.setName(name);
		docUpdate.setSpecialization(special);
		docUpdate.setEmail(email);
		docUpdate.setContact(contact);
		docUpdate.setExperience(expe);
		docUpdate.setAddress(address);
		
		AdminServices.updateDoctor(docUpdate);
		
		RequestDispatcher dis = request.getRequestDispatcher("update_doc.jsp");
		
		dis.forward(request, response);
	}

}
