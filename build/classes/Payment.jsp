<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Insert title here</title>
</head>
<script type="text/javascript">
          function validateForm1(){
          var x=document.forms["cardForm"]["cardNumber"].value;
          if (x==null || x=="")
            {
            alert("Enter credit card number");
            return false;
            }
          
          if (!/^\d{16}$/.test(x)) {
        	    alert('Enter 16 digit credit card number');
        	    return false;
          }
          else
          {  
        	 alert('Congrats !!!! You Registered successfully ,You can play the quiz now!!!');  
        	 // window.location.replace("OrderConfirmationPage.jsp");
        	return false;       	 
          
          }
          }
          </script>
<body>
<div id="Banner">Score</div>
		<!-- Link Menu --> 
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
<form action="CardDetails.jsp" onsubmit="return validateForm1()" method="post" name="cardForm" >
    <table style="border: thin solid #000000; width: 58%; z-index: 1; left: 250px; top: 275px; position: absolute; height: 215px;">
        <tr>
            <td colspan="3" bgcolor="#3399FF" 
                style="font-family: 'Arial Black'; font-size: 20px">
               <center>Enter the details of your card</center></td>
           
        </tr>
        <tr>
            <td class="style1">
                Card Type:</td>
            <td>
            <select>
              <option value="Visa">Visa</option>
  <option value="MasterCard">MasterCard</option>
   </select></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Card Number:</td>
            <td>
                <input id="Text2" type="text" name="cardNumber"/></td>
            <td>
                &nbsp;</td>
        </tr>
          <tr>
            <td class="style1">
              Secure code :</td>
            <td>
                <input id="Text3" type="text" /></td>
            <td>
                &nbsp;</td>
        </tr>
          
          <tr>
            <td class="style1">
              Expiration Date</td>
            <td>
                <select>
  <option value="2013">2013</option>
  <option value="2014">2014</option>
  <option value="2015">2015</option>
  <option value="2016">2016</option>
   <option value="2017">2017</option>
  <option value="2018">2018</option>
  <option value="2019">2019</option>
  <option value="2020">2020</option>

</select>

<select>
  <option value="Jan">Jan</option>
  <option value="Feb">Feb</option>
  <option value="Mar">Mar</option>
  <option value="Apr">Apr</option>
  <option value="May">May</option>
  <option value="Jun">Jun</option>
  <option value="Jul">Jul</option>
  <option value="Aug">Aug</option>
  <option value="Sept">Sept</option>
  <option value="Oct">Oct</option>
  <option value="Nov">Nov</option>
  <option value="Dec">Dec</option>
</select>
</td>
            <td>
                &nbsp;</td>
        </tr>
        
          <tr>
            <td class="style1">
              Seller Information :</td>
            <td>
                <input id="Text5" type="text" /></td>
            <td>
                &nbsp;</td>
        </tr>
          <tr>
            <td class="style1" colspan="3">
                <input type="submit" value="submit"/>
                <input id="Button1" type="button" value="Cancel" /></td>
           
        </tr>
    </table>
    </form>
</body>
</html>