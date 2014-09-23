<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css"style="height:100%">
	body{
	margin: 0px;
	padding: 0px;
	height:100%
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
	height: 1000px;
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

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap-theme.min.css">	   
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<title>Siquoia - Play Quiz</title>


</head>
<body>
	
	<div id="Banner">Play Quiz</div>		
	<form id="Menu">
	<ul>
		<li><a href="SiquoiaServlet" >Try Quiz</a></li>
		<li><a href="Payment.jsp">Make a Payment</a></li>
		<li><a href="SubmitQuestion.jsp">Submit Question</a></li>
		<li><a href="Points.jsp">Points</a></li>		
		<li><a href="PlayQuiz.jsp" >Play</a></li>
		<li><a href="LogoutServlet" >Logout</a></li>
	</ul>
	
	</form>
	<form >
		<!-- Standard button -->
		<br><br>

<form action="PlayQuizServlet">
<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<a href="SiquoiaServlet?category=Science"  style="margin-left:20px;">Science</a>
<a href="SiquoiaServlet?category=Computer" >Computer</a>
<a href="SiquoiaServlet?category=Maths" >Maths</a>
<a href="SiquoiaServlet?category=General" >General</a>
</form>
</body>
</html>