package controllers;

import java.sql.*;
import java.sql.SQLException;

import dbConnection.DBConnector;
import models.Participants;
import java.util.ArrayList;

public class ParticipantController {

	//Inserting
	public boolean ParticipantInsert(ArrayList<String> sp) {
		int rowUpdated = 0;
		try {
			String columnList = "(";
			String parameterList = "(";
			String columns = null;
			DBConnector dc = new DBConnector();
			Connection con = dc.getConnection();
			Statement getColumnNameStmt = con.createStatement();
			String getColumnNames = "SELECT * FROM participant";
			ResultSet columnNames = getColumnNameStmt.executeQuery(getColumnNames);
			ResultSetMetaData participantMetaData = columnNames.getMetaData();
			int columnCount = participantMetaData.getColumnCount();
			
			for (int i = 1; i <= columnCount; i++) {
				columns = participantMetaData.getColumnName(i);
				if (i == columnCount) {
					columnList = columnList + columns;
					parameterList = parameterList + "?";
				}
				else {
					columnList = columnList + columns + ",";
					parameterList = parameterList + "?,";
				}
			}
			columnList += ")";
			parameterList += ")";
			String sql = "INSERT INTO participant " +columnList+ " VALUES "+parameterList+ "";
			System.out.println(sql);
			int i = 1;
	
			PreparedStatement statement;
			rowUpdated = 0;
				statement = (PreparedStatement)con.prepareStatement(sql);
				for (String insertItems : sp) {
					statement.setString(i, insertItems);
					i++;
				}
				
//				statement.setString(1, sp.getStudentID());
//				statement.setString(2, sp.getSportsID());
//				statement.setString(3, sp.getPartName());
//				statement.setString(4, sp.getHundred());
//				statement.setString(5, sp.getTwoh());
//				statement.setString(6, sp.getHighj());
//				statement.setString(7, sp.getLongj());
//				statement.setString(8, sp.getEight());
				
				rowUpdated = statement.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
//				try {
//				con.close();
//				}catch(Exception e) {	
//				}
				return rowUpdated > 0;
			}
			
			

	}
	
	//Deleting
	@SuppressWarnings("finally")
	public boolean ParticipantDelete(String studentId)  {
		
			DBConnector dc = new DBConnector();
			Connection con = dc.getConnection();
			String sql = "DELETE FROM participant WHERE StudentID = '"+studentId+ "'" ;
			
			
			Statement statement;
			int rowUpdated = 0;
			try {
				statement = con.createStatement();
//				statement.setString(1, sp.getStudentID());
//				statement.setString(2, sp.getSportsID());
//				statement.setString(3, sp.getPartName());
//				statement.setString(4, sp.getHundred());
//				statement.setString(5, sp.getTwoh());
//				statement.setString(6, sp.getHighj());
//				statement.setString(7, sp.getLongj());
//				statement.setString(8, sp.getEight());
				
				rowUpdated = statement.executeUpdate(sql);
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				return rowUpdated > 0;
			}
			
	
		}
	
	//updating
	@SuppressWarnings("finally")
	public boolean ParticipantUpdate(Participants sp) {
			
		DBConnector dc = new DBConnector();
		Connection con = dc.getConnection();
		String sql = "UPDATE participant SET SportsID=?,PartName=? ,Hundred=?, Twoh=?, Highj=?, Longj=?, Eight=?  WHERE StudentID = '"+sp.getStudentID()+"'";
			
			
		PreparedStatement statement;
		int rowUpdated = 0;
		try {
			statement = con.prepareStatement(sql);
			//statement.setString(1, sp.getStudentID());
			statement.setString(1, sp.getSportsID());
			statement.setString(2, sp.getPartName());
			statement.setString(3, sp.getHundred());
			statement.setString(4, sp.getTwoh());
			statement.setString(5, sp.getHighj());
			statement.setString(6, sp.getLongj());
			statement.setString(7, sp.getEight());
				
			rowUpdated = statement.executeUpdate();
			System.out.println(rowUpdated);
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			return rowUpdated > 0;
		}

	}


}
