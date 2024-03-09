package com.hostmdy.expense.controller;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/admin")
public class AdminController extends HttpServlet {

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
			mode="LIST";
		}

		switch (mode) {
		  case "LIST":
		  		showAllUser(req,resp);
		  		break;
		  
		  case "ENABLE":
			    enable(req,resp);
			    break;
		  case "DISABLE":
			    disable(req,resp);
			    break;
		}
	}
	
	private void disable(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long userId= Long.parseLong(req.getParameter("userId"));
		Boolean ok = userDao.disable(userId);
		
		if(ok) {
			showAllUser(req, resp);
		}
		else {
			req.setAttribute("error", "disable operation fail");
			RequestDispatcher dispatcher = req.getRequestDispatcher("template/error/item-error.jsp");
			dispatcher.forward(req, resp);
		}
		
	}


	private void enable(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long userId= Long.parseLong(req.getParameter("userId"));
		Boolean ok = userDao.enable(userId);
		
		if(ok) {
			showAllUser(req, resp);
		}
		else {
			req.setAttribute("error", "enable operation fail");
			RequestDispatcher dispatcher = req.getRequestDispatcher("template/error/item-error.jsp");
			dispatcher.forward(req, resp);
		}
	}


	private void showAllUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<User> users = userDao.getAllUsers();
		req.setAttribute("userList", users);
		RequestDispatcher dispatcher = req.getRequestDispatcher("template/user/dashboard.jsp");
		dispatcher.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
