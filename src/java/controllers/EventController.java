package controllers;

import java.lang.ProcessBuilder.Redirect;
import java.sql.*;

import dbConnection.DBConnector;
import models.Events;

public class EventController {

	//Inserting
	public boolean EventInsert(Events sp) {
		
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "INSERT INTO eventadd(eName, meetType, gType, maxNo) VALUES (?,?,?,?)";
		
		PreparedStatement statement;
		int rowUpdated = 0;
		try {
			Statement alterStatement = con.createStatement();
			statement = (PreparedStatement)con.prepareStatement(sql);
			
			//statement.setInt(1, sp.geteId());
			statement.setString(1, sp.geteName());
			statement.setString(2, sp.getMeetType());
			statement.setString(3, sp.getgType());
			statement.setInt(4, sp.getMaxNo());
			int result = statement.executeUpdate();
			
			if(result > 0) {
				String alterQuery = "ALTER TABLE participant ADD " +sp.geteName()+ " VARCHAR(10) NOT NULL";
				int alterResult = alterStatement.executeUpdate(alterQuery);
				if (alterResult > 0)
					return true;
				else
					return false;
			}
				
			else
				return false;
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				
			}
		}
		return rowUpdated > 0;
		} 

	
	//Deleting
	@SuppressWarnings("finally")
	public boolean EventDelete(String eId)  {
		
			DBConnector dc = new DBConnector();
			Connection con = dc.getConnection();
			String sql = "DELETE FROM eventadd WHERE eId = '"+eId+ "'" ;
			
			
			Statement statement;
			int rowUpdated = 0;
			try {
				statement = con.createStatement();
				
				rowUpdated = statement.executeUpdate(sql);
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				return rowUpdated > 0;
			}
}
}
