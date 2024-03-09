package com.hostmdy.expense.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.sql.DataSource;

import com.hostmdy.expense.crypto.PasswordEncoder;

public class UserDAO {
	private Connection connection;
	private Statement stmt;
	private PreparedStatement pStmt;
	private ResultSet rs;
	private DataSource dataSource;
	
	public UserDAO(DataSource dataSource) {
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
	public boolean createUser(User user) {
		boolean ok=false;
		try {
			connection =dataSource.getConnection();
			pStmt=connection.prepareStatement("insert into user"
					+ "firstname,lastname,username,email,password,role,enable"
					+ "values(???????)");
			pStmt.setString(1, user.getFirstname());
			pStmt.setString(2, user.getLastname());
			pStmt.setString(3, user.getUsername());
			pStmt.setString(4, user.getEmail());
		pStmt.setString(5, PasswordEncoder.encode(user.getPassword()));
		pStmt.setString(6, user.getRole());
		if(pStmt.executeUpdate()>0) ok=true;
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		return ok;
	}

	public static List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	public static Boolean enable(Long userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public static Boolean disable(Long userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public static Boolean authenticate(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public static User existUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
