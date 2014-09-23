<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	height: 100%;
}

#Banner {
	font: bold 26px Tahoma, Geneva, sans-serif;
	font-style: normal;
	padding: 20px;
	color: white;
	background-color: #3B5998;
	*width: 100%;
}

#Menu {
	/*margin-right: 90%;*/
	float: left;
	width: 230px;
	height: 100%;
	padding: 15px;
	margin: 0px;
	background-color: #333;
}
/*Inspiration from: http://www.red-team-design.com/css3-ordered-list-styles*/
#Menu ul {
	list-style: none; /* Remove default numbering */
	font: 15px 'trebuchet MS', 'lucida sans';
	padding: 0;
	margin: 0px;
	width: 100%;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
}

#Menu a {
	display: block;
	padding: .4em .4em .4em 2em;
	*padding: .4em;
	margin: .5em 0;
	background: #ddd;
	color: #444;
	text-decoration: none;
	border-radius: .3em;
}

#Menu a:hover {
	background: #eee;
}

#Menu a:hover:before {
	
}

#Menu a:before {
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

#PlayerInfo ul {
	list-style-type: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<title>Siquoia - Submit Question</title>
</head>
<body>
	<div id="Banner">Submit Question</div>
	<div id="Menu">
		<ul>
		    <li><a href="Menu.jsp">Home Page</a></li>	
			<li><a href="SiquoiaServlet" >Try Quiz</a></li>
			<li><a href="Payment.jsp">Make a Payment</a></li>
			<li><a href="SubmitQuestion.jsp">Submit Question</a></li>
			<li><a href="Points.jsp">Points</a></li>
			<li><a href="PlayQuiz.jsp" >Play</a></li>			
			<li><a href="LogoutServlet" >Logout</a></li>
		</ul>
	</div>
	<h3 style="margin-left:20px;">Your question has been successfully submitted!</h3><br>
	<a style="margin-left:20px;" href="SubmitQuestion.jsp">Submit another</a>
</body>
</html>