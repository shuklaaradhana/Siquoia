package edu.sjsu.siquoia.model;

import java.util.ArrayList;

public class siquoiaModel {

	private static siquoiaModel modelObj = new siquoiaModel();
	private  ArrayList<question> level1;
	private ArrayList<question> level2;
	private ArrayList<question> level3;
	private ArrayList<question> level4;
	private ArrayList<question> level5;
	
	
	public siquoiaModel(){}
	
	public  ArrayList<question> getLevel1(){
	
		return level1;
	}
	
	public  void setLevel1(ArrayList<question> level1){
		this.level1=level1;
	
	}
	
	public static siquoiaModel getInstance(){
		return modelObj;
	}
	
	
	
}
