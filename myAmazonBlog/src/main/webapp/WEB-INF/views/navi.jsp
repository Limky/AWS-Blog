<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 

			<header id="header">
				<div class="inner">
					<a href="/" class="image avatar"><img src="/resources/images/main/faceImage2.jpg" alt="" /></a>
					<h1 style="font-size: 1.15em;"><strong>I am Limky</strong>&nbsp;<a href="https://github.com/Limky">My GitHub</a><br/>
					<a href="android">Android</a>&nbsp;&nbsp;<a href="ios">ios</a>&nbsp;&nbsp;<a href="node.js">node</a><br/>
					<a href="jsp">JSP</a>&nbsp;&nbsp;<a href="spring">Spring</a>&nbsp;&nbsp;<a href="js-jquery">js-jquery</a><br/>
					<a href="mysql">MySQL</a>&nbsp;&nbsp;<a href="database">DataBase</a><br/>
					 <a href="network">Network</a>&nbsp;&nbsp;<a href="os">OS</a>&nbsp;&nbsp;<a href="java">JAVA</a><br/>
					  <a href="algorithm">Algorithm</a>&nbsp;&nbsp;<a href="linux">Linux</a>&nbsp;&nbsp;<a href="aws">Aws</a><br/>
					  <a href="jenkins">jenkins</a></h1>
				</div>
			</header>


		<!-------------------------------------------메달 부분  ----------------------------------------------->

<style>	
@import url(http://fonts.googleapis.com/css?family=Roboto);
.loginmodal-container {
  padding: 30px;
  max-width: 350px;
  width: 100% !important;
  background-color: #F7F7F7;
  margin: 0 auto;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  font-family: roboto;
}

.loginmodal-container h1 {
  text-align: center;
  font-size: 1.8em;
  font-family: roboto;
}

.loginmodal-container input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.loginmodal {
  text-align: center;
  font-size: 14px;
  font-family: 'Arial', sans-serif;
  font-weight: 700;
  height: 36px;
  padding: 0 8px;
/* border-radius: 3px; */
/* -webkit-user-select: none;
  user-select: none; */
}

.loginmodal-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
  text-decoration: none;
  color: #666;
  font-weight: 400;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
} 

.login-help{
  font-size: 12px;
}
</style>

<script>

document.getElementById('pw').value = '';

</script>


<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Login to CMS</h1><br>
				 <c:url var="addUrl" value="doLogin" />
					<form method="post" action="${addUrl}" id="formLogin"> 
					<input type="text" name="userid" placeholder="user">
					<input type="password" name="password" placeholder="password" id="pw" value="">
					<input type="submit" name="login" class="login loginmodal-submit" value="Login">
				  </form>
					
				
				</div>
			</div>
		  </div>
		


		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.poptrox.min.js"></script>
			<script src="/resources/assets/js/skel.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/resources/assets/js/main.js"></script>

			 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			
			