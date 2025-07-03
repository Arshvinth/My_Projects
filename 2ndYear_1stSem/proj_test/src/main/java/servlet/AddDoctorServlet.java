package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DoctorModel;
import services.AdminServices;


@WebServlet("/AddDoctorServlet")
public class AddDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;      
    
    public AddDoctorServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DoctorModel docModel = new DoctorModel();
		
		String 	name = request.getParameter("Doc_Name");
		String 	special = request.getParameter("Specialization");
		String 	email = request.getParameter("Email");
		String 	contact = request.getParameter("Phone");
		int		expe = Integer.parseInt(request.getParameter("Experience"));
		String 	address = request.getParameter("Doc_Address");
		
		docModel.setName(name);
		docModel.setSpecialization(special);
		docModel.setEmail(email);
		docModel.setContact(contact);
		docModel.setExperience(expe);
		docModel.setAddress(address);
			
		AdminServices.addDoctor(docModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("manage_doc.jsp");
		
		dis.forward(request, response);
	}

}
