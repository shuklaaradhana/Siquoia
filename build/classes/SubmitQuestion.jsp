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
	<form action ="SubmitQuestionServlet" method="post" class="form-horizontal" style="float: left; margin-top:20px;">
		<div class="control-group">
			<label class="control-label" for="level">Level</label>
			<div class="controls">
<!-- 				<input type="text" id="level" name="QuizID" -->
<!-- 					placeholder="Enter Level"> -->
				<select name="QuizID" >
					  <option value="1">Level 1</option>
					  <option value="2">Level 2</option>
					  <option value="3">Level 3</option>
               </select>	
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="cat">Category</label>
			<div class="controls">
<!-- 				<input type="text" id="cat" name="category" -->
<!-- 					placeholder="Enter Category"> -->
				<select name="category" >
					  <option value="1">Science</option>
					  <option value="2">Computer</option>					  
					  <option value="3">Maths</option>
					  <option value="4">General</option>
               </select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="ques">Question</label>
			<div class="controls">
				<input type="text" id="ques" name="Question" style="height:70px;width:500px;"
					placeholder="Enter Question">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="option1">Option 1</label>
			<div class="controls">
				<input type="text" id="option1" name="Op1" style="height:40px;width:500px;"
					placeholder="Enter choice 1">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="option2">Option 2</label>
			<div class="controls">
				<input type="text" id="option2" name="Op2" style="height:40px;width:500px;"
					placeholder="Enter choice 2">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="option1">Option 3</label>
			<div class="controls">
				<input type="text" id="option3" name="Op3" style="height:40px;width:500px;"
					placeholder="Enter choice 3">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="option4">Option 4</label>
			<div class="controls">
				<input type="text" id="option2" name="Op4" style="height:40px;width:500px;"
					placeholder="Enter choice 4">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="ans">Answer</label>
			<div class="controls">
<!-- 				<input type="text" id="ans" name="Answer" style="height:70px;width:500px;" placeholder="Enter Answer"> -->
				<select name="Answer" >
					  <option value="Op1">Option 1</option>
					  <option value="Op2">Option 2</option>
					  <option value="Op3">Option 3</option>
					  <option value="Op4">Option 4</option>
               </select>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn">Submit</button>
			</div>
		</div>
	</form>

</body>
</html>