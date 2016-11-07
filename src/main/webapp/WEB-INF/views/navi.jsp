<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>No Sidebar - Arcana by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="/resources/assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="/resources/assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="/resources/assets/css/ie9.css" /><![endif]-->
	
	
		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/skel.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/resources/assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/resources/assets/js/main.js"></script>
			<script src="/resources/assets/js/main.js"></script>

</head>

<script type="text/javascript">


$(document).ready(function() {
	

	var page = "${pageName}";
	$('#nav ul li').removeClass();

	if(page==="home") $('#Home').addClass('current');
	if(page==="android") $('#android').addClass('current');
	if(page==="web") $('#web').addClass('current');
	if(page==="server") $('#server').addClass('current');
	if(page==="lang") $('#lang').addClass('current');
	if(page==="network") $('#network').addClass('current');
	if(page==="news") $('#news').addClass('current');
	if(page==="etc") $('#etc').addClass('current');
	      
	      
});


	
	
  


</script>

<body>
	<div id="header">

				
						<h1><a href="/" id="logo">  
						Limky <em>의 삽질 블로그</em></a></h1>

				
						<nav id="nav">
							<ul>
								<li id="Home"><a href="/">Home</a></li>
							
								<li id="android"><a href="android">모바일</a>
									<ul>
										<li><a href="android">Android</a></li>
										<li><a href="#">ios ( 예 정 )</a></li>
									</ul>
								</li>
								<li id="web"><a href="#">웹</a>
									<ul>
										<li><a href="#">JSP</a></li>
										<li><a href="#">Spring</a></li>
										<li><a href="#">JavaScript</a></li>
										<li><a href="#">JQuery</a></li>
										<li><a href="#">Ajax</a></li>
									</ul>
								</li>
								<li id="server"><a href="linux">서버</a>
									<ul>
										<li><a href="linux">Linux</a></li>
										<li><a href="aws">AWS</a></li>
										<li><a href="#">Tomcat ( 예 정 )</a></li>
										<li><a href="#">NginX ( 예 정 )</a></li>
									</ul>
								</li>
								<li id="lang"><a href="#">언어</a>
									<ul>
										<li><a href="#">Java ( 예 정 )</a></li>
										<li><a href="#">C ( 예 정 )</a></li>
										<li><a href="#">C++ ( 예 정 )</a></li>
									</ul>
									</li>
								<li id="network"><a href="#">네트워크</a></li>
								<li id="news"><a href="#">기사</a></li>
								<li id="etc"><a href="etc">기타</a></li>
							</ul>
						</nav>

				</div> 



</body>
</html>