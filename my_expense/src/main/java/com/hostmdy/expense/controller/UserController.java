package com.hostmdy.expense.controller;

import java.io.IOException;

import javax.sql.DataSource;

import com.hostmdy.expense.model.ItemDAO;
import com.hostmdy.expense.model.User;
import com.hostmdy.expense.model.UserDAO;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user")
public class UserController extends HttpServlet {

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
			
		String mode= req.getParameter("mode");
		
		if(mode==null) {
			mode="FORM";
		}

	
		switch (mode) {
		  case "FORM":
		  		showSignUpForm(req,resp);
		  		break;
		  
		  case "SIGNUP":
			    signUp(req,resp);
			    break;

		}
	
	}
	
	private void signUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = new User(firstname,lastname,username,email,password,"user");
		
		Boolean signUpOk=userDao.createUser(user);
		
		req.setAttribute("signupOk", signUpOk);
		
		showSignUpForm(req, resp);
		
	}


	private void showSignUpForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("template/user/sign-up.jsp");
		dispatcher.forward(req, resp);
		
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
