<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.sjsu.siquoia.model.siquoiaModel" %>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<html>
<head>
<style type="text/css">
	body{
	margin: 0px;
	padding: 0px;
	}
	#Banner{
	font:bold 26px Tahoma, Geneva, sans-serif;
	font-style:normal;
	padding: 20px;
	color: white;
	background-color: #3B5998;
	*width: 100%;
	}
	#Menu{
	/*margin-right: 90%;*/
	float: left;
	width: 230px;
	height: 1900px;
	padding: 15px;
	margin: 0px;
	
	background-color: #333;
	}
	/*Inspiration from: http://www.red-team-design.com/css3-ordered-list-styles*/
	#Menu ul{
	list-style: none; /* Remove default numbering */
	font: 15px 'trebuchet MS', 'lucida sans';
	padding: 0;
	margin: 0px;
	width: 100%;
	text-shadow: 0 1px 0 rgba(255,255,255,.5);
	}	
	
	#Menu a{
	display: block;
	padding: .4em .4em .4em 2em;
	*padding: .4em;
	margin: .5em 0;
	background: #ddd;
	color: #444;
	text-decoration: none;
	border-radius: .3em;
	
	}

	#Menu a:hover{
	background: #eee;
	}

	#Menu a:hover:before{
    	
	}
	
	#Menu a:before{
	left: -1.3em;
	top: 50%;
	margin-top: -1.3em;
	background: #87ceeb;
	height: 2em;
	width: 2em;
	line-height: 2em;
	border: .3em solid #fff;
	text-align: center;
	font-weight: bold;
	border-radius: 2em;
	}
	#PlayerInfo {
	margin: 10px;
	float: left;
	/*border: 1px solid grey;
	border-radius: 10px;*/
	}
	#PlayerInfo ul{
	list-style-type: none;
	}
	
	.question{
	 font-weight:bold;
	 font-size:15px;
	 vertical-align:top;
	 padding-top:2px;
	}
	
	.questionDesc{
	  vertical-align:top;
	  font-style:italic;
	}
	
	.separator{
	}
	
	.quizLevel{
	  display:inline;
	  font-size:24px;
	  font-weight:bold;
	  margin-left:20px;
	}
	
	td{
	  vertical-align:top;
	}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Siquoia - Main Menu</title>
<script>
</script>
</head>
<body>
<script>
</script>
		
	<div id="Banner" >Level 1</div>
		
<div id="Menu">
	<ul>
		<li><a href="Menu.jsp">Home Page</a></li>
		<li><a href="Points.jsp">Points</a></li>		
		<li><a href="Payment.jsp">Make a Payment</a></li>
		<li><a href="LogoutServlet" >Logout</a></li>		
	</ul>
	</div>
	
<!-- <p>&nbsp;</p> -->
<!-- <p class="quizLevel">Quiz: Level 1</p> -->

<p>&nbsp;</p>
<form id="form1" method="post" action="SiquoiaServlet">

<table style="padding-left:20px; width:70%">
<% 
for ( int i = 0; i < siquoiaModel.getInstance().getLevel1().size(); i++ ) {
	%>
	<tr>
	  <td class="question">Q<%= i+1 %>.</td>
	  <td class="questionDesc"><%= siquoiaModel.getInstance().getLevel1().get(i).getQuestion() %></td>
	</tr>
    <tr>
      <td width="15">a.</td>
      <td width="173"><label>
        <input type="radio" name="<%= siquoiaModel.getInstance().getLevel1().get(i).getQuestionID() %>" value="Op1" id="Op1">        
      <%= siquoiaModel.getInstance().getLevel1().get(i).getOp1() %></label></td>
    </tr>
    <tr>
      <td>b.</td>
      <td><label>
        <input type="radio" name="<%= siquoiaModel.getInstance().getLevel1().get(i).getQuestionID() %>" value="Op2" id="Op2">
        <%= siquoiaModel.getInstance().getLevel1().get(i).getOp2() %></label></td>
    </tr>
    <tr>
      <td>c.</td>
      <td><label>
        <input type="radio" name="<%= siquoiaModel.getInstance().getLevel1().get(i).getQuestionID()%>" value="Op3" id="Op3">
        <%= siquoiaModel.getInstance().getLevel1().get(i).getOp3() %></label></td>
    </tr>
    <tr>
      <td>d.</td>
      <td><label>
        <input type="radio" name="<%= siquoiaModel.getInstance().getLevel1().get(i).getQuestionID() %>" value="Op4" id="Op4">
        <%= siquoiaModel.getInstance().getLevel1().get(i).getOp4() %></label></td>
    </tr> 
    <tr>
     <td colspan="2"><hr></td>
    </tr>
    <% 
}    %> 
 </table>   
<p>
  <input type="submit" id="submitId" value="Submit">
</p>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;   </p>
<!-- Information about the player such as name level active quiz etc. --> 
	

</body>
</html>