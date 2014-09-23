<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<style>
#loginDiv{
width:800px;
height:250px;
}
#centerDiv {
    width: 800px;
    height: 250px;
    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}
form{
 padding:20px;
}
html { 
  background: url(img/login.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
<title>Sign Up</title>
</head>
<body>
<div id="centerDiv">
		<div class="panel panel-default" id=loginDiv>
				<form action="#" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="firstname" placeholder="First Name" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="lastname" placeholder="Last Name" type="text" required />
                </div>
            </div>
            <input class="form-control" name="username" placeholder="Username" type="text" />
            <input class="form-control" name="youremail" placeholder="Your Email" type="email" />
            
            <input class="form-control" name="password" placeholder="New Password" type="password" />
            
            
            <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox1" value="male" />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox2" value="female" />
                Female
            </label>
            <br />
            <br />
            <div style="width:100%; text-align:center">
            <button class="btn btn-lg btn-primary btn-block" style="width:150px;" type="submit">
                Sign up</button>
            </div>
            
            </form>
        </div>
</div>
</body>
</html>