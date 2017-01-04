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

		<h1 style="color: #004D40">#리눅스</h1>

		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>0. Linux를 시작하며...</h3>
			</header>
			<p>개발자의 내공은 리눅스를 얼마나 잘 다루는지에서 부터 나온다고들 한다. 다른 선배 개발자 분들을 보면 적어도
				리눅스의 기본적인 명령어라도 알고있으라고 조언한다~ 그만큼 개발을 하다보면 윈도우 환경이 아닌 리눅스와 같은 환경에서
				개발할 일들이 많다는 거!! 서버개발자가 아니여도 리눅스의 기본적인 명령어를 어느정도 할 줄 알면 개발자로서 큰 도움이
				될거라고 생각한다. 이제 마우스 필요없이 키보드만 있으면 된다...!</p>
			<br />
			<p>리눅스 필수 기본 명령어</p>
			<a href="http://www.emh.co.kr/content.pl?linux_basic_commands">http://www.emh.co.kr/content.pl?linux_basic_commands</a><br>

			<img src="/resources/images/linux/linux.gif" alt=""
				style="margin-top: 30px; width: 400px" />


		</section>




		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>1. 리눅스 포트 포트포워딩</h3>
			</header>
			<p>리눅스는 보안상 슈퍼유저 권한이 아닌 일반유저에게 포트포워딩 권한을 주지않는다. 따라서 iptable이라는
				녀석을 통해 포트포워딩 해준다. (# iptables -t nat -A PREROUTING -p tcp --dport 80
				-j REDIRECT --to-port 8080) 이제 80 포트로 요청을 받으면 자연스럽게 8080으로 포워딩 해준다.</p>
			<br/>
			<p>	포트포워딩에 개념에 대해 설명해 놓은 곳</p>
			<a href="http://storytown.tistory.com/14">http://storytown.tistory.com/14</a><br>

			<img src="/resources/images/linux/port_forwarding.jpg" alt=""
				style="margin-top: 30px; width: 400px" />


		</section>



		<div class="row"></div>


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