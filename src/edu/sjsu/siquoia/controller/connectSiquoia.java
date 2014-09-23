package edu.sjsu.siquoia.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class connectSiquoia {
	
	private Connection connection = null;
	private Statement statement = null;
	private PreparedStatement preparedstatement = null;
	private ResultSet resultset = null;
	
	public void connectDatabase() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			
			connection = DriverManager.getConnection("jdbc:mysql://siquoiards.cj966ofb0non.us-west-1.rds.amazonaws.com:3306/Siquoia?user=root&password=Siquoiards");
			
			statement = connection.createStatement();
			

			resultset = statement.executeQuery("Select * from user_Siquoia");
			writeResultSet(resultset);
			
//			preparedstatement = connection.prepareStatement("insert into user_Siquoia values(?,?,?,?,?,?)");
//			preparedstatement.setInt(1, 5);
//		    preparedstatement.setString(2, "lynette1");
//		    preparedstatement.setString(3, "Lynette");
//		    preparedstatement.setString(4, "Scavo");
//		    preparedstatement.setString(5, "lynette123@gmail.com");
//		    preparedstatement.setString(6, "password5");
//		    preparedstatement.executeUpdate();

		    preparedstatement = connection.prepareStatement("SELECT userid,username,firstname,lastname,email,password from user_Siquoia");
		        resultset = preparedstatement.executeQuery();
		        writeResultSet(resultset);

//		      
//		        preparedstatement = connection.prepareStatement("delete from user_Siquoia where userid= ? ; ");
//		        preparedstatement.setInt(1, 5);
//		        preparedstatement.executeUpdate();
//		        
//		        resultset = statement.executeQuery("select * from user_Siquoia");
//		       
		        
		      } catch (SQLException e) {
					System.out.println("Connection Failed! Check output console");
					e.printStackTrace();
					return;
				} 

		    }
	
	private void close() {
	    try {
	      if (resultset != null) {
	        resultset.close();
	      }

	      if (statement != null) {
	        statement.close();
	      }

	      if (connection != null) {
	        connection.close();
	      }
	    } catch (Exception e) {

	    }
	  }		
	
	
	public void writeResultSet(ResultSet resultset) throws SQLException{
		
		while(resultset.next()){
			String userid = resultset.getString("UserID");
			String username = resultset.getString("Username");
			String firstname = resultset.getString("FirstName");
			String lastname = resultset.getString("LastName");
			String email = resultset.getString("email");
			String password = resultset.getString("password");
			System.out.println("Userid: " + userid);
		      System.out.println("username: " + username);
		      System.out.println("firstname: " + firstname);
		      System.out.println("lastname: " + lastname);
		      System.out.println("email: " + email);
		      System.out.println("password: " + password);
		      
		}
		
	}
	
	
	public static void main(String args[]) throws Exception{
		connectSiquoia c1 = new connectSiquoia();
		c1.connectDatabase();
	}
	
	public Connection getConnection(){
		return connection;
	}

}
