<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consumerfed Kozhikode Region</title>
<link rel="stylesheet" href="CSS/style.css">
<script type="text/javascript">
   function isValidUser(){
	   alert(" you dont have the privillege to access ");
   }
</script>
</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Login to Consumerfed</h1>
      <form method="post" action="LoginServlet"">
        <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
        <p class="submit"><input type="submit" name="commit"  value="Login"></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="">Click here to reset it</a>.</p>
    </div>
  </section>
</body>
</html>