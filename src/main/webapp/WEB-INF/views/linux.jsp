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

</head>

<style>
.p_tag_desc {
	font-family: 'Jeju Gothic'; serif;
	font-size: 15px;
	margin: 0;
}

.p_tag_desc_hi{
	font-family: 'Jeju Gothic'; serif;
	font-size: 15px;
	margin: 0;
	color: black;
}

</style>

<body>
	<div id="page-wrapper">

				<!-- Header -->
		<jsp:include page="navi.jsp"></jsp:include>


		<!-- Main -->
		<section class="wrapper style1">
			<div class="container">
				<div id="content">

					<!-- Content -->

					<article>
						<header>
							<h2>0. Linux를 시작하며...</h2>
							<p>2016-11-03</p>
						</header>

						<span class=""><img
							src="/resources/images/linux/linux.gif" width="550px" height="400px" alt="" style="margin: 0 auto;" /></span>

						<p class="p_tag_desc" style="margin-top: 20px">
							개발자의 내공은 리눅스를 얼마나 잘 다루는지에서 부터 나온다고들 한다. 다른 선배 개발자 분들을 보면 적어도 리눅스의 기본적인 명령어라도 알고있으라고 조언한다~ 그만큼
							개발을 하다보면 윈도우 환경이 아닌 리눅스와 같은 환경에서 개발할 일들이 많다는 거!! 서버개발자가 아니여도 리눅스의 기본적인 명령어를 어느정도 할 줄 알면 개발자로서 큰 도움이 될거라고 생각한다.
							이제 마우스 필요없이 키보드만 있으면 된다...!<br/><br/><br/>
							
							리눅스 필수 명령어<br/>
							<a href="http://www.emh.co.kr/content.pl?linux_basic_commands">http://www.emh.co.kr/content.pl?linux_basic_commands</a>
						</p>

					</article>

				</div>
			</div>
		</section>
		
		
		
		<section class="wrapper style1" style="margin-top:60px">
			<div class="container">
				<div id="content">

					<!-- Content -->

					<article>
						<header>
							<h2>1. 리눅스 포트 포트포워딩</h2>
							<p>2016-11-03</p>
							<p class="p_tag_desc">리눅스는 보안상 슈퍼유저 권한이 아닌 일반유저에게 포트포워딩 권한을 주지않는다. 따라서 iptable이라는 녀석을 통해 포트포워딩 해준다.<br>
						</p>
						</header>
						<p class="p_tag_desc">(# iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080)<br>이제 80 포트로 요청을 받으면 자연스럽게 8080으로 포워딩 해준다.<br><br>
						포트포워딩에 개념에 대해 설명해 놓은 곳<br><a href="http://storytown.tistory.com/14">http://storytown.tistory.com/14</a></p>

						<span class=""><img
						src="/resources/images/linux/port_forwarding.jpg" width="450px" height="320px" alt="aws_port_open" style="margin: 20px auto;" /></span>
			
			
					</article>

				</div>
			</div>
		</section>
		
		
		
		

		<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<section class="3u 6u(narrower) 12u$(mobilep)">
						<h3>Links to Stuff</h3>
						<ul class="links">
							<li><a href="#">Mattis et quis rutrum</a></li>
							<li><a href="#">Suspendisse amet varius</a></li>
							<li><a href="#">Sed et dapibus quis</a></li>
							<li><a href="#">Rutrum accumsan dolor</a></li>
							<li><a href="#">Mattis rutrum accumsan</a></li>
							<li><a href="#">Suspendisse varius nibh</a></li>
							<li><a href="#">Sed et dapibus mattis</a></li>
						</ul>
					</section>
					<section class="3u 6u$(narrower) 12u$(mobilep)">
						<h3>More Links to Stuff</h3>
						<ul class="links">
							<li><a href="#">Duis neque nisi dapibus</a></li>
							<li><a href="#">Sed et dapibus quis</a></li>
							<li><a href="#">Rutrum accumsan sed</a></li>
							<li><a href="#">Mattis et sed accumsan</a></li>
							<li><a href="#">Duis neque nisi sed</a></li>
							<li><a href="#">Sed et dapibus quis</a></li>
							<li><a href="#">Rutrum amet varius</a></li>
						</ul>
					</section>
					<section class="6u 12u(narrower)">
						<h3>Get In Touch</h3>
						<form>
							<div class="row 50%">
								<div class="6u 12u(mobilep)">
									<input type="text" name="name" id="name" placeholder="Name" />
								</div>
								<div class="6u 12u(mobilep)">
									<input type="email" name="email" id="email" placeholder="Email" />
								</div>
							</div>
							<div class="row 50%">
								<div class="12u">
									<textarea name="message" id="message" placeholder="Message"
										rows="5"></textarea>
								</div>
							</div>
							<div class="row 50%">
								<div class="12u">
									<ul class="actions">
										<li><input type="submit" class="button alt"
											value="Send Message" /></li>
									</ul>
								</div>
							</div>
						</form>
					</section>
				</div>
			</div>

			<!-- Icons -->
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
				<li><a href="#" class="icon fa-linkedin"><span
						class="label">LinkedIn</span></a></li>
				<li><a href="#" class="icon fa-google-plus"><span
						class="label">Google+</span></a></li>
			</ul>

			<!-- Copyright -->
			<div class="copyright">
				<ul class="menu">
					<li>&copy; Untitled. All rights reserved</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>

		</div>

	</div>

	<!-- Scripts -->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="/resources/assets/js/skel.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="/resources/assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="/resources/assets/js/main.js"></script>

</body>
</html>