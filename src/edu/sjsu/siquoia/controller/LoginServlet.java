package edu.sjsu.siquoia.controller;
	

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	
//	@WebServlet("/SiquoiaServlet") 
	public class LoginServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public LoginServlet() {
	        super();
	        		
	        	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			connectSiquoia obj = new connectSiquoia();
			try{					
				obj.connectDatabase();			
				Connection connect=obj.getConnection();
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				String username = request.getParameter("userName");
				System.out.println("Username : " + username);
				String password = request.getParameter("password");
				System.out.println("password : " + password);
				
				String strQuery = "select * from user_Siquoia where Username='" + username + "' and password = '" + password + "'";		
				Statement statement =connect.createStatement();
					 
					ResultSet rs = statement.executeQuery(strQuery);
			}
			
			catch (Exception e){
				e.printStackTrace();
			}
					
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try{
			connectSiquoia obj1 = new connectSiquoia();					
			obj1.connectDatabase();			
			Connection connect=obj1.getConnection();			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String username = request.getParameter("userName");
			System.out.println("Username : " + username);
			String password = request.getParameter("password");
			System.out.println("password : " + password);
			
			String strQuery = "select * from user_Siquoia where Username='" + username + "' and password = '" + password + "'";		
			Statement statement =connect.createStatement();
				 
				ResultSet rs = statement.executeQuery(strQuery);
				if(rs.next()){
					HttpSession session = request.getSession();
		            session.setAttribute("user", username);
		            //setting session to expiry in 30 mins
		            session.setMaxInactiveInterval(30*60);
					response.sendRedirect("Menu.jsp");
				}
				else{
					HttpSession session = request.getSession();
		            session.setAttribute("user", null);
		            PrintWriter outWr= response.getWriter();
		            request.getRequestDispatcher("LoginFailed.jsp").forward(request, response);
				}				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
