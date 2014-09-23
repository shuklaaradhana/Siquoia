package edu.sjsu.siquoia.controller;
	

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.siquoia.model.question;
import edu.sjsu.siquoia.model.siquoiaModel;

	
//	@WebServlet("/SiquoiaServlet") 
	public class SiquoiaServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public SiquoiaServlet() {
	        super();
	        		
	        	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ArrayList<question> level1Question = siquoiaModel.getInstance().getLevel1();
			level1Question = new ArrayList<question>(40);
			  
			connectSiquoia obj = new connectSiquoia();
			try{			
				
//				HttpSession session = request.getSession();
//				if(session.getAttribute("user") == null){
//					request.getRequestDispatcher("Login.jsp").forward(request, response);
//				}
	            String category = request.getParameter("category");
				obj.connectDatabase();			
				Connection connect=obj.getConnection();
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();		
				
				String strQuery = null; 
			    switch(category){
			    case "Trial":
			    	strQuery = "select QuestionID,QuizID,Question,Op1,Op2,Op3,Op4,Answer from questions where QuizID=1 Limit 10";	
			    	break;
			    case "Science":
			    	strQuery = "select QuestionID,QuizID,Question,Op1,Op2,Op3,Op4,Answer from questions where CategoryID= 1 Limit 20";	
			    	break;
			    case "Computer":
			    	strQuery = "select QuestionID,QuizID,Question,Op1,Op2,Op3,Op4,Answer from questions where CategoryID= 2 Limit 20";
			      break;
			    case "Maths":
			    	strQuery = "select QuestionID,QuizID,Question,Op1,Op2,Op3,Op4,Answer from questions where CategoryID= 3 Limit 20";
			    	break;
			    case "General":
			    	strQuery = "select QuestionID,QuizID,Question,Op1,Op2,Op3,Op4,Answer from questions where CategoryID= 4 Limit 20";
			    	break;
			    }
						
							
				Statement statement =connect.createStatement();					 
				ResultSet rs = statement.executeQuery(strQuery);
					
				question [] q1 =new question[40];
				int i=-1;
				while(rs.next()){
					i=i+1;					
						q1[i] = new question();						
						q1[i].setQuestionID(rs.getInt(1));
						q1[i].setQuizID(rs.getInt(2));
						q1[i].setQuestion(rs.getString(3));
						q1[i].setOp1(rs.getString(4));
						q1[i].setOp2(rs.getString(5));
						q1[i].setOp3(rs.getString(6));
						q1[i].setOp4(rs.getString(7));
						q1[i].setAnswer(rs.getString(8));
						level1Question.add(i,q1[i]);
						System.out.println("level1 : " + i + " - " + q1[i].getQuestionID() + " " +	q1[i].getQuestion() );
						System.out.println("hello");
						
					
				}
					
				siquoiaModel.getInstance().setLevel1(level1Question);
				
				for(int j=0;i<5;i++){
				System.out.println(siquoiaModel.getInstance().getLevel1().get(j).getQuestionID());
				System.out.println(siquoiaModel.getInstance().getLevel1().get(j).getQuestion());
				System.out.println(siquoiaModel.getInstance().getLevel1().get(j).getOp1());
				System.out.println(siquoiaModel.getInstance().getLevel1().get(j).getOp2());
				System.out.println(siquoiaModel.getInstance().getLevel1().get(j).getOp3());
				System.out.println("=====================================================");
				}
				if(category.equals("Trial")){
					request.getRequestDispatcher("Level1.jsp").forward(request, response);
				}else{
					request.getRequestDispatcher("PaidQuiz.jsp").forward(request, response);
				}				
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
//				HttpSession session = request.getSession();
//				if(session.getAttribute("user") == null){
//					request.getRequestDispatcher("Login.jsp").forward(request, response);
//				}		
				int score=0;
				connectSiquoia obj = new connectSiquoia();
					
				obj.connectDatabase();			
				Connection connect=obj.getConnection();
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();	
				java.util.Enumeration enu = request.getParameterNames();  
			     while(enu.hasMoreElements()){  
			         String paramName = (String)enu.nextElement(); 
			         String userAnswer = request.getParameter(paramName);
			                 System.out.println("PARAM: "  
			                           + paramName  
			                           + ": "  
			                           + userAnswer);  
			      
//			     
//			     Map<String, String> map= new HashMap<String, String>();
//			     map.put(paramName, userAnswer);
//			     System.out.println("map :" + map.get(paramName));		     
			     
			     
						String strQuery = "select Answer from questions where QuestionID=" + paramName;		
						Statement statement =connect.createStatement();					 
						ResultSet rs = statement.executeQuery(strQuery);
						while(rs.next()){
						String ans = rs.getString("Answer");
						System.out.println("answer from db: " + ans);
						if(userAnswer.equals(ans)){							
							score=score+1;
						}
						}
			     }
			
				String result = Integer.toString(score);			
				request.setAttribute("result", result);				 
				request.getRequestDispatcher("/Result.jsp").forward(request, response);
			
			} 
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
		}
	

