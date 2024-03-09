package com.hostmdy.expense.controller;

import java.io.IOException;

import javax.sql.DataSource;

import com.hostmdy.expense.model.User;
import com.hostmdy.expense.model.UserDAO;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/dbResource")
	private DataSource dataSource;
	
    private UserDAO userDao;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		userDao= new UserDAO(dataSource);
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
       String mode= req.getParameter("mode");
		
		if(mode==null) {
			mode="FORM";
		}

	
		switch (mode) {
		  case "FORM":
		  		showSignInForm(req,resp);
		  		break;
		  
		  case "LOGIN":
			    login(req,resp);
			    break;
			    
		  case "LOGOUT":
			  	logout(req,resp);
		  		break;

		}
	
	}
	
	private void logout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		
		//session.removeAttribute("user");
		
		session.invalidate();
		resp.sendRedirect("login");
	}


	private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String username= req.getParameter("username");
		String password = req.getParameter("password");
		
		Boolean loginOk = UserDAO.authenticate(username, password);
		
		if(loginOk) {
			
		    User user = UserDAO.existUser(username);
		    HttpSession session = req.getSession();
		    session.setAttribute("user", user);
			resp.sendRedirect("item");
		}
		else {
			req.setAttribute("loginOk", loginOk);
			showSignInForm(req, resp);
		}
		
	}


	private void showSignInForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = req.getRequestDispatcher("template/user/sign-in.jsp");
		dispatcher.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
