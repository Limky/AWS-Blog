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

		<h1 style="color: #004D40">#아마존웹서비스</h1>

		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>0. AWS(아마존웹서비스)를 시작하며...</h3>
			</header>
			<p>
				학부시절 여태 톰캣으로 간단한 웹 프로젝트를 돌리다 나만의 개발 블로그를 만들고 싶어 깃허브에서 제공해주는 블로그를
				사용해봤다. <br /> 하지만.. 서버언어를 지원해주지 않는 점이 불편했고 친절하게 뒤에서 다 제공해주는 서버 위에서
				웹을 돌리기보다 서버를 직접 사서 서버+웹 모두 공부해보고 싶은 욕심이 생겼다. <br /> 그래서 선택한 것이
				아마존!! 공부해보면서 느끼지만 아마존은 정말 편리하고 특히 리눅스환경의 OS를 제공받았기 때문에 리눅스 공부도
				많이하게되는 점이 정말 큰 장점...ㅎ <br /> 므튼 개인적으로 삽질한 내용을 기록하고자 한다. 아마존을 들어가기
				앞서 도대체 아마존이 왜 좋은지 아마존의 특징을 알아보자 <a
					href="https://aws.amazon.com/ko/events/cloud/">https://aws.amazon.com/ko/events/cloud/</a>
			</p>
			<img src="/resources/images/aws/AWS.png" alt=""
				style="margin: 0 auto; width: 400px" />


		</section>





		<section id="one">
			<header class="major">
				<h3>1. 아마존웹서버 포트번호 열기</h3>
			</header>
			<p style="color: #999">아마존 서버에서 내가 원하는 번호로 포트를 여는 방법을 알아보자..
				개인적으로 많은 삽질을 했다...ㅠ 개발 환경은 아마존 웹서버 위에 돌아가는 톰캣으로 한다. 톰캣을 설치하면 기본적으로
				8080포트가 잡히는데.. 이게 훗날 도메인 처리를 할 때 반드시 바꿔줘야한다.(:8080 꼴보기 싫음) 므튼 톰캣은
				기본적으로 80으로 포트를 바꾸면 굳이 80포트를 localhost 뒤에 :80 이라고 쓰지 않아도 자동으로 80포트를
				잡는다. 따라서 그냥 localhost라고 입력해도 자~알 돌아간다.
			<P>이제 우리가 할 일은 톰캣의 8080포트를 80포트로 바꾸는 일이다!!</P>


			</p>
			<img src="/resources/images/aws/port_open.png" alt=""
				style="margin: 0 auto; width: 400px" />


			<P>포트를 여는 작업 순서</P>
			<p>1. 자신의 아마존 인스턴스 Security Groups에서 원하는 포트번호 설정한다.</p>
			<P>2. iptable 명령어를 이용 톰캣 포트를 포트포워딩을 해주면 끝.</P><br/>
			<p style="color: #999">이렇게 간단한...하지만 이 2가지 작업만 하면 된다는 사실을 알기까지 많은
				삽질을 했다... 직접 톰캣폴더에 conf/server.xml에 있는 포트번호를 80으로 직접 수정 톰캣 재시작을
				해보거나,가비아 도메인 서비스에서 포트포워딩을 해주거나 네임서비스를 해보거나...다 실패; 하지만!</p>
			<P>중요한 사실은 포트를 아마존 인스턴스 Security Groups에서 반드시 열어줘야 잘 동작한다. 그 이유는
				나의 아마존 인스턴스로 부터 누군가 통신 요청을 하면 반드시 아마존에서 중간에 인터셉터를 한 후 나의 인스턴스로 오기
				때문에 중간에 거치는 녀석에게 내가 80 포트를 열겠다고 설정해줘야 통신이 된다는 점!!</P><br/>


			<p style="color: #999">하지만 또 한가지...리눅스 기반에 아마존 인스턴스에 경우 리눅스 자체적으로
				보안상 포트번호를 바꿀수 있는 권한을 일반유저에게 주지않는다. 따라서 아무리 일반 유저가 톰캣 server.xml을 바꾸고
				난리쳐도 안바뀐다. 이때 사용하는 것이</p>
			<P>iptable이라는 녀석인데 이거 명령어 하나만 쳐주면 80 포트를 자동으로 8080포트로 포트포워딩이 된다!!<br/>(# iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080)</P>

		</section>


		<div class="row"></div>

	<jsp:include page="footer.jsp" flush="false" />
	
</body>
</html>