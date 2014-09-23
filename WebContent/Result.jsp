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
<body onload="pageLoaded()">		
	<div id="Banner" >Level 1</div>		
<div id="Menu">
	<ul>
		<li><a href="SiquoiaServlet" >Try Quiz</a></li>
		<li><a href="Payment.jsp">Make a Payment</a></li>
		<li><a href="SubmitQuestion.jsp">Submit Question</a></li>
		<li><a href="Points.jsp">Points</a></li>		
		<li><a href="PlayQuiz.jsp" >Play</a></li>
		<li><a href="LogoutServlet" >Logout</a></li>		
	</ul>
	</div>
	
<!-- <p>&nbsp;</p> -->
<!-- <p class="quizLevel">Quiz: Level 1</p> -->

<p>&nbsp;</p>
<!-- Information about the player such as name level active quiz etc. --> 
<h3>Your Result is <%=(String)request.getAttribute("result")%></h3>

</body>
</html>