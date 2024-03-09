package com.hostmdy.expense.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ItemDAO {
	private Connection connection;
	private Statement stmt;
	private PreparedStatement pStmt;
	private ResultSet rs;
	private DataSource dataSource;
	
	public ItemDAO(DataSource dataSource) {
		super();
		this.dataSource=dataSource;
	}
	
	public void close() {
		if(connection !=null) {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}
	
	public List<Item> getAllItems(Long userId){
		List<Item> items= new ArrayList<Item>();
		try {
			connection= dataSource.getConnection();
			stmt=connection.createStatement();
			rs=stmt.executeQuery("select * from item where user_id ='"+userId+"';");
			while(rs.next()) {
				items.add(new Item(
						rs.getLong("id"), 
						rs.getString("name"), 
						rs.getString("category"), 
						rs.getDouble("price"), 
						rs.getInt("quantity"), 
						rs.getDouble("subtotal"), 
						rs.getTimestamp("issued_date").toLocalDateTime(), 
						rs.getBoolean("essential"), 
						rs.getString("image"),
						rs.getString("description"),
						rs.getLong("user_id")));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return items;
	}
	
	public Item getItemById(Long userId, Long itemId){
		Item item=null;
		try {
			connection= dataSource.getConnection();
			stmt=connection.createStatement();
			rs=stmt.executeQuery("select * from item where user_id ='"+userId+"' and id='"+itemId+"';");
			while(rs.next()) {
				item=new Item(
						rs.getLong("id"), 
						rs.getString("name"), 
						rs.getString("category"), 
						rs.getDouble("price"), 
						rs.getInt("quantity"), 
						rs.getDouble("subtotal"), 
						rs.getTimestamp("issued_date").toLocalDateTime(), 
						rs.getBoolean("essential"), 
						rs.getString("image"),
						rs.getString("description"),
						rs.getLong("user_id"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return item;
	}
	
	public boolean createItem(Item item) {
		boolean ok=false;
		try {
			connection=dataSource.getConnection();
			pStmt=connection.prepareStatement("insert into item "
					+ "(name,category,price,quantity,subtotal,issued_date,essential,image,user_id,description) "
					+ "values(?,?,?,?,?,?,?,?,?,?);");
			pStmt.setString(1,item.getName());
			pStmt.setString(2,item.getCategory());
			pStmt.setDouble(3,item.getPrice());
			pStmt.setInt(4,item.getQuantity());
			pStmt.setDouble(5,item.getSubTotal());
			pStmt.setTimestamp(6, Timestamp.valueOf(item.getIssuedDate()));
			pStmt.setBoolean(7,item.getEssential());
			pStmt.setString(8,item.getImage());
			pStmt.setLong(9,item.getUserId());
			pStmt.setString(10,item.getDescription());
			
			int rowEffected=pStmt.executeUpdate();
			
			if(rowEffected > 0 ) ok=true;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return ok;
		
	}
	public boolean updateItem(Item item) {
		boolean ok=false;
		try {
			connection=dataSource.getConnection();
			pStmt=connection.prepareStatement("update item set "
					+ "name=?,"
					+ "category=?,"
					+ "price=?,"
					+ "quantity=?,"
					+ "subtotal=?,"
					+ "essential=?,"
					+ "image=?,"
					+ "description=? where id=?;");
			pStmt.setString(1,item.getName());
			pStmt.setString(2,item.getCategory());
			pStmt.setDouble(3,item.getPrice());
			pStmt.setInt(4,item.getQuantity());
			pStmt.setDouble(5,item.getSubTotal());
			pStmt.setBoolean(6,item.getEssential());
			pStmt.setString(7,item.getImage());
			pStmt.setString(8,item.getDescription());
			pStmt.setLong(9,item.getId());
			
			int rowEffected=pStmt.executeUpdate();
			
			if(rowEffected > 0 ) ok=true;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return ok;
		
	}
	public boolean deleteItem(Long itemId) {
		boolean ok=false;
		try {
			connection=dataSource.getConnection();
			pStmt=connection.prepareStatement("delete from item where id=? ");
			
			pStmt.setLong(1,itemId);
			
			int rowEffected=pStmt.executeUpdate();
			
			if(rowEffected > 0 ) ok=true;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return ok;
		
	}


}
