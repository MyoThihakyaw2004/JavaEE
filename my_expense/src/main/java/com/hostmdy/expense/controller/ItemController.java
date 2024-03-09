package com.hostmdy.expense.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.sql.DataSource;

import com.hostmdy.expense.model.Item;
import com.hostmdy.expense.model.ItemDAO;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/item")
public class ItemController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
@Resource(name="jdbc/dbResource")
	private DataSource dataSource;

	private ItemDAO itemDAO;
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		itemDAO= new ItemDAO(dataSource);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String mode=req.getParameter("mode");
		
		if(mode == null) {
			mode="LIST";
		}
		
		switch (mode) {
		case "LIST":
			showAllItems(req, resp);			
			break;
		case "FORM":
			showAddForm(req, resp);			
			break;
		case "CREATE":
			createItem(req, resp);			
			break;
		case "SINGLE":
			showDetails(req, resp);			
			break;		
		case "LOAD":
			showUpdateForm(req, resp);			
		break;
		case "UPDATE":
			updateItem(req, resp);			
		break;
		case"DELETE":
		deleteItem(req,resp);
		break;
	}
		
	}
	

	private void deleteItem(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		Long itemId=Long.parseLong(req.getParameter("itemId"));
				boolean ok=itemDAO.deleteItem(itemId);
		if(ok) {
			resp.sendRedirect("item");
		}else {
			req.setAttribute("ok", ok);
			showDetails(req, resp);
		}
		
	}

	private void showUpdateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long itemId= Long.parseLong(req.getParameter("itemId"));
		Item item= itemDAO.getItemById(1L,itemId);
		if(item != null) {
			req.setAttribute("item", item);
			RequestDispatcher dispatcher= req.getRequestDispatcher("template/item/update-item.jsp");
			dispatcher.forward(req, resp);	
		}else {
			req.setAttribute("message", "Your requested item is not found in your inventory...");
			showErrorPage(req, resp);
		}
	}

	private void showDetails(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long itemId= Long.parseLong(req.getParameter("itemId"));
		Item item= itemDAO.getItemById(1L,itemId);
		if(item != null) {
			req.setAttribute("item", item);
			RequestDispatcher dispatcher= req.getRequestDispatcher("template/item/item-details.jsp");
			dispatcher.forward(req, resp);	
		}else {
			req.setAttribute("message", "Your requested item is not found in your inventory...");
			showErrorPage(req, resp);
		}
		
		
	}
	
	private void showErrorPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher= req.getRequestDispatcher("template/error/item-error.jsp");
		dispatcher.forward(req, resp);	
	}
	
	private void showAddForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher= req.getRequestDispatcher("template/item/add-item.jsp");
		dispatcher.forward(req, resp);

	}
	private void createItem(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		//Item item=new Item("MSI Cyborg Laptop","laptop", 2300.22, 2, true, "https://ict.com.mm/cdn/shop/files/MSICyborg15A12VF_RTX4060GDDR68GB_Laptop_i7-12thGen_3.jpg?v=1683014862", "This is my new laptop for coding",1L);
		String name=req.getParameter("name");
		String category=req.getParameter("category");
		Double price=Double.parseDouble(req.getParameter("price"));
		Integer quantity= Integer.parseInt(req.getParameter("quantity"));
		String image=req.getParameter("image");
		String description=req.getParameter("description");
		Boolean essential=Boolean.parseBoolean(req.getParameter("essential"));
		
		Item item= new Item(name, category, price, quantity, essential, image, description, 1L);
		boolean ok= itemDAO.createItem(item);
		
		req.setAttribute("ok", ok);
		showAddForm(req, resp);
	}
	private void updateItem(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		//Item item=new Item("MSI Cyborg Laptop","laptop", 2300.22, 2, true, "https://ict.com.mm/cdn/shop/files/MSICyborg15A12VF_RTX4060GDDR68GB_Laptop_i7-12thGen_3.jpg?v=1683014862", "This is my new laptop for coding",1L);
		Long itemId=Long.parseLong(req.getParameter("itemId"));
		String name=req.getParameter("name");
		String category=req.getParameter("category");
		Double price=Double.parseDouble(req.getParameter("price"));
		Integer quantity= Integer.parseInt(req.getParameter("quantity"));
		String image=req.getParameter("image");
		String description=req.getParameter("description");
		Boolean essential=Boolean.parseBoolean(req.getParameter("essential"));
		
		Item item= new Item(itemId, name, category, price, quantity, essential, image, description);
				boolean ok= itemDAO.updateItem(item);
		if(ok) {
			resp.sendRedirect("item?mode=SINGLE&itemId="+itemId);
		}else {
			req.setAttribute("ok", ok);
			showAddForm(req, resp);
			
		}		
	}
	private void showAllItems(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Item> items= itemDAO.getAllItems(1L);
		req.setAttribute("items", items);
		RequestDispatcher dispatcher= req.getRequestDispatcher("template/index.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
