package edu.sjsu.siquoia.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SubmitQuestionServlet
 */
//@WebServlet("/SubmitQuestionServlet")
public class SubmitQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitQuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		connectSiquoia obj = new connectSiquoia();
		
		try {
//			HttpSession session = request.getSession();
//			if(session.getAttribute("user") == null){
//				request.getRequestDispatcher("Login.jsp").forward(request, response);
//			}
			int maxNum = 0;
			int categoryId =0;
			PreparedStatement preparedstatement=null;
			obj.connectDatabase();
			Connection connect=obj.getConnection();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();	
			String quizId = request.getParameter("QuizID");
			String questionCategory = request.getParameter("category");
			String question = request.getParameter("Question");
			String Option1 = request.getParameter("Op1");
			String Option2 = request.getParameter("Op2");
			String Option3 = request.getParameter("Op3");
			String Option4 = request.getParameter("Op4");
			String answer = request.getParameter("Answer");
			
			String strQuery = "select max(QuestionID)  from questions";			
			Statement statement =connect.createStatement();					 
			ResultSet rs = statement.executeQuery(strQuery);
			while(rs.next()){
				maxNum = rs.getInt(1);
				maxNum++;
			}
			
			String strQuery2 = "insert into questions values (" + maxNum + "," + quizId+ "," + questionCategory + ",\"" +question+ "\",\"" +Option1+ "\",\"" +Option2+ "\",\"" +Option3+ "\",\"" +Option4+ "\",\"" +answer + "\")";
			preparedstatement = connect.prepareStatement(strQuery2);
			preparedstatement.executeUpdate();
				
			request.getRequestDispatcher("Submitted.jsp").forward(request, response);	
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			request.getRequestDispatcher("Submitted.jsp").forward(request, response);
			e.printStackTrace();
		}			
		
	}

}
