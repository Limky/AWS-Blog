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
							<h2>0. AWS(아마존웹서비스)를 시작하며...</h2>
							<p>2016-11-03</p>
						</header>

						<span class=""><img
							src="/resources/images/aws/AWS.png" width="400px" height="200px" alt="" style="margin: 0 auto;" /></span>

						<p class="p_tag_desc" style="margin-top: 20px">
							학부시절 여태 톰캣으로 간단한 웹 프로젝트를 돌리다 나만의 개발 블로그를 만들고 싶어 깃허브에서 제공해주는
							블로그를 사용해봤다. 하지만.. 서버언어를 지원해주지 않는 점이 불편했고 친절하게 뒤에서 다 제공해주는 서버 위에서 웹을 
							돌리기보다  서버를 직접 사서 서버+웹 모두 공부해보고 싶은 욕심이 생겼다. 그래서 선택한 것이 아마존!! 공부해보면서 느끼지만 
							아마존은 정말 편리하고 특히 리눅스환경의 OS를 제공받았기 때문에 리눅스 공부도 많이하게되는 점이 정말 큰 장점...ㅎ 므튼 개인적으로 삽질한 
							내용을 기록하고자 한다.<br/><br/><br/>
							
							아마존을 들어가기 앞서 도대체 아마존이 왜 좋은지 아마존의 특징을 알아보자<br/>
							<a href="https://aws.amazon.com/ko/events/cloud/">https://aws.amazon.com/ko/events/cloud/</a>
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
							<h2>1. 아마존웹서버 포트번호 열기</h2>
							<p>2016-11-03</p>
							<p class="p_tag_desc">아마존 서버에서 내가 원하는 번호로 포트를 여는 방법을 알아보자.. 개인적으로 많은 삽질을 했다...ㅠ<br>
							개발 환경은 아마존 웹서버 위에 돌아가는 톰캣으로 한다. 톰캣을 설치하면 기본적으로 8080포트가 잡히는데.. 이게 훗날 도메인 처리를 할 때 반드시 바꿔줘야한다.(:8080 꼴보기 싫음)
							므튼 톰캣은 기본적으로 80으로 포트를 바꾸면 굳이 80포트를 localhost 뒤에 :80 이라고 쓰지 않아도 자동으로 80포트를 잡는다. 따라서 그냥 localhost라고 입력해도 
							자~알 돌아간다.
						</header>
						<p class="p_tag_desc">이제 우리가 할 일은 톰캣의 8080포트를 80포트로 바꾸는 일이다!!</p>

						<span class=""><img
						src="/resources/images/aws/port_open.png" width="650px" height="360px" alt="aws_port_open" style="margin: 20px auto;" /></span>
						<ul>
								<li><h4 style="margin-top: 20px">포트를 여는 작업 순서</h4></li>
							<li><p class="p_tag_desc">1. 자신의 아마존 인스턴스 Security Groups에서 원하는 포트번호 설정한다.</p></li>
							<li><p class="p_tag_desc">2. iptable 명령어를 이용 톰캣 포트를 포트포워딩을 해주면 끝.</p></li>
	
						</ul>
				
					<header>
						<p class="p_tag_desc">이렇게 간단한...하지만 이 2가지 작업만 하면 된다는 사실을 알기까지 많은 삽질을 했다...
						직접 톰캣폴더에 conf/server.xml에 있는 포트번호를 80으로 직접 수정 톰캣 재시작을 해보거나,가비아 도메인 서비스에서 포트포워딩을 해주거나 네임서비스를 해보거나...다 실패;
						하지만!<br></p> <p class="p_tag_desc_hi">중요한 사실은 포트를 아마존 인스턴스 Security Groups에서 반드시 열어줘야 잘 동작한다. 그 이유는 나의 아마존 인스턴스로 부터 누군가 통신 요청을 하면 반드시
						아마존에서 중간에 인터셉터를 한 후  나의 인스턴스로 오기 때문에 중간에 거치는 녀석에게 내가 80 포트를 열겠다고 설정해줘야 통신이 된다는 점!!<br><br><br></p>
			<p class="p_tag_desc">하지만 또 한가지...리눅스 기반에 아마존 인스턴스에 경우 리눅스 자체적으로 보안상 포트번호를 바꿀수 있는 권한을 일반유저에게 주지않는다.<br> 따라서 아무리 일반 유저가 톰캣 server.xml을 바꾸고 난리쳐도 안바뀐다.
			이때 사용하는 것이</p>  <p class="p_tag_desc_hi">iptable이라는 녀석인데 이거 명령어 하나만 쳐주면 80 포트를 자동으로 8080포트로 포트포워딩이 된다!!<br/>(# iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080)</p>
	
				
					</header>
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