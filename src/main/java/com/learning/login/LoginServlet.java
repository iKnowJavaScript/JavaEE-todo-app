package com.learning.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
	
	private LoginService userValidationService = new LoginService();
	
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		  // Setting attribute for the JSP file
		  //request.setAttribute("name", request.getParameter("name"));
		  //request.setAttribute("password", request.getParameter("password"));
		  
		  
		  request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	  }
	  
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		  String password = request.getParameter("password");
		  String name = request.getParameter("name");
		
		boolean isUserValid  = userValidationService.isUserValid(name, password);
		  
		if(isUserValid) {
			request.getSession().setAttribute("username", name);
			
			// redirect to todoServlet
			response.sendRedirect("/list-todo.do");
		}else {
			request.setAttribute("errorMessage", "Invalid Credentials!");
		  request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}
	  }
}
