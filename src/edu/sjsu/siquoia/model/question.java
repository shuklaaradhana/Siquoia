package edu.sjsu.siquoia.model;

public class question {
	private int QuestionID;
	private int QuizID;
	private String Question;
	private String Op1;
	private String Op2;
	private String Op3;
	private String Op4;
	private String Answer;
	
	public int getQuestionID(){
		return QuestionID;
	}
	
	public void setQuestionID(int QuestionID){
		this.QuestionID = QuestionID;
	}
	
	public int getQuizID(){
		return QuizID;
	}

	public void setQuizID(int QuizID){
		this.QuizID = QuizID;
	}
	
	public String getQuestion(){
		return Question;
	}


	public void setQuestion(String Question){
		this.Question = Question;
	}
	
	
	public String getOp1(){
		return Op1;
	}
	
	public void setOp1(String Op1){
		this.Op1 = Op1;
	}
	
	public String getOp2(){
		return Op2;
	}
	
	public void setOp2(String Op2){
		this.Op2 = Op2;
	}
	
	public String getOp3(){
		return Op3;
	}
	
	public void setOp3(String Op3){
		this.Op3 = Op3;
	}
	
	public String getOp4(){
		return Op4;
	}
	
	public void setOp4(String Op4){
		this.Op4 = Op4;
	}
	
	public String getAnswer(){
		return Answer;
	}
	
	public void setAnswer(String Answer){
		this.Answer = Answer;
	}
}
