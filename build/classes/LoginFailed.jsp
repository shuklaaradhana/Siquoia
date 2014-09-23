<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<style>
#loginDiv{
width:400px;
}
#centerDiv {
    width: 400px;
    height: 400px;
    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}
html { 
  background: url(img/login.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
<title>Siquoia</title>
</head>
<body>
<div id="centerDiv">

	<form action="LoginServlet" method="post">
			<div class="panel panel-default" id=loginDiv>
				<div class="panel-heading">
					<span class="glyphicon glyphicon-lock"></span> Login
				</div>
				<div class="panel-body">
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">Username</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="userNameId"	name="userName">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="passwordId" name="password">
							</div>
						</div>
						<div class="form-group last">
							<div class="col-sm-offset-3 col-sm-9">
								<button class="btn btn-lg btn-primary btn-block" type="submit">
									Sign in</button>
				</div>
			</div>
		</div>
		<div style="width:100%; text-align:center;"><span style="color:red;">Login Failed!</span></div>
		<div class="panel-footer">
			Not Registered? <a href="SignUp.jsp">Register here</a>
		</div>
        </div>
	</form>
</div>
</body>
</html>

