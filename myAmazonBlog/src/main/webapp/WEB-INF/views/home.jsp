<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Limky</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 		<script src="/resources/assets/js/ie/html5shiv.js"></script> -->
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<!-- 		<link rel="stylesheet" href="/resources/assets/css/ie8.css" /> -->
</head>
<body id="top">
	<jsp:include page="navi.jsp" flush="false" />


	<!-- Main -->
	<div id="main">

		<h1 style="color: #004D40">#림키 개발 블로그</h1>
		
	<img src="/resources/images/home/main.JPG" alt="" style="margin: 0 auto; width: 650px" />



		<section id="one">
			<header class="major">
				<h2>#Contact</h2>
			</header>
			<h3>
				Specification : <a style="color: #006064"
					href="https://github.com/Limky/specification">github.com/Limky/specification</a>
			</h3>
			<h3>
				Email : <a style="color: #006064"
					href="#">Limky@sqisoft.com</a>
			</h3>

			<ul class="actions">
				<li><a href="#" class="button">Learn More</a></li>
			</ul>
		</section>



		<!-- Three -->
		<section id="three">
			<h2>Get In Touch</h2>
			<p>Accumsan pellentesque commodo blandit enim arcu non at amet id
				arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi
				lorem vulputate lorem neque lorem ipsum dolor.</p>
			<div class="row">
				<div class="8u 12u$(small)">
					<form method="post" action="#">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="name" id="name" placeholder="Name" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="Message"
									rows="4"></textarea>
							</div>
						</div>
					</form>
					<ul class="actions">
						<li><input type="submit" value="Send Message" /></li>
					</ul>
				</div>
				<div class="4u$ 12u$(small)">
					<ul class="labeled-icons">
						<li>
							<h3 class="icon fa-home">
								<span class="label">Address</span>
							</h3> 1234 Somewhere Rd.<br /> Nashville, TN 00000<br /> United
							States
						</li>
						<li>
							<h3 class="icon fa-mobile">
								<span class="label">Phone</span>
							</h3> 000-000-0000
						</li>
						<li>
							<h3 class="icon fa-envelope-o">
								<span class="label">Email</span>
							</h3> <a href="#">hello@untitled.tld</a>
						</li>
					</ul>
				</div>
			</div>
		</section>


		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="#" class="icon fa-dribbble"><span
							class="label">Dribbble</span></a></li>
					<li><a href="#" class="icon fa-envelope-o"><span
							class="label">Email</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</footer>
</body>
</html>