package controllers;
import java.sql.*;
import dbConnection.DBConnector;

public class TestColumn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DBConnector dbcon = new DBConnector();
		Connection con = dbcon.getConnection();
		
		try {
			  Statement st = con.createStatement();
			  ResultSet rs = st.executeQuery("SELECT * FROM participant");
			  ResultSetMetaData md = rs.getMetaData();
			  int col = md.getColumnCount();
			  System.out.println("Number of Column : "+ col);
			  System.out.println("Columns Name: ");
			  
			  for (int i = 1; i <= col; i++){
				  String col_name = md.getColumnName(i);
				  System.out.println(col_name);
			  }
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

}
