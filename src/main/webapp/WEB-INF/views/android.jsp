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
.p-tag-desc {
	font-family: 'Jeju Gothic'; serif;
	font-size: 15px;
	margin: 0;
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
							<h2>0. 안드로이드 개발을 시작하며...</h2>
							<p>2016-11-02</p>
						</header>

						<span class=""><img
							src="/resources/images/android/android_top_img.png" alt=""
							width="250px" height="250px" style="margin: 0 auto;" /></span>

						<p class="p-tag-desc" style="margin-top: 20px">
							필자는 웹에 대한 개발과 공부를 먼저 시작했고, 안드로이드에 대해 개인적으로 늦게 관심을 가졌다고 생각한다. <br>따라서
							안드로이드에 관한 깊은 내공이나, 전문적인 지식이 부족할 수 있다. 하지만 나름대로 안드로이드 실무 개발에 투입되면서
							혼자 느끼고 삽질 했던 수 많은 시간과<br>사수로부터 배웠던 소중한 지식을 그냥 흘려두기 아까워 이렇게
							스크랩하고자 한다. <br> 스크랩의 전체적인 내용은 안드로이드 개발을 처음 시작하는 초심자를 위한 수준의
							글일 것이다.( 나도 초심자이기 때문에...^^ ) <br>아무튼 이 글로 인해 초심자들이 안드로이드가 더
							재미있어지고, 더 즐겁게 개발 할 수 있으면 좋겠다. <br>(부족한 점이 있으면 언제든 조언은 언제든
							환영이다~)
						</p>

					</article>

				</div>
			</div>
		</section>
		
		
		
		<section class="wrapper style1" style="margin-top:20px">
			<div class="container">
				<div id="content">

					<!-- Content -->

					<article>
						<header>
							<h2>1. 안드로이드 기본 프로젝트 구조</h2>
							<p>2016-11-02</p>
							<p class="p-tag-desc">보통 안드로이드 스튜디오에서 프로젝트를 생성하면 Java,XML,Gradle,AndroidManifest등 을 포함한 프로젝트 구조를 갖게된다.<br> 각 요소들이 어떤 역할을 하는지 알아보자.
						</p>
						</header>

						<span class=""><img
							src="/resources/images/android/Android_1_1-2.JPG" alt="" style="margin: 20px auto;" /></span>
						<ul>
							<li><h4 style="margin-top: 20px">1. AndroidManifest.xml</h4></li>
							<li><p class="p-tag-desc">*보통 매니페스트라고 부르며, 앱의 구성요소나 권한등의 정보를 설정하고 정의함!</p></li>
							<li><p class="p-tag-desc">*앱에 대한 정보를 담고있음. 여기서 특히 앱 권한을 부여한다는 점을 꼭 기억</p></li>
							<li><p class="p-tag-desc"></p></li>
						</ul>
		
						<ul>
							<li><h4 style="margin-top: 20px">2. /java</h4></li>
							<li><p class="p-tag-desc">*자바 소스 파일이 들어있는 폴더로 [/app/src/main]폴더 안에 있음</p></li>
							<li><p class="p-tag-desc">*표준 자바와 마찬가지로 패키지명과 동일한 하위 폴더들이 만들어짐</p></li>
							<li><p class="p-tag-desc">*쉽게 생각해서 앱 UI를 동적으로 처리,컨트롤하고 앱의 백단 뒤에서 전반적인 처리를 함</p></li>
						</ul>
		
						<ul>
							<li><h4 style="margin-top: 20px">3. /res</h4></li>
							<li><p class="p-tag-desc">*리소스 파일이 들어있는 폴더로 [app/src/main] 폴더 안에 있음</p></li>
							<li><p class="p-tag-desc">*XML 레이아웃,그림 파일,문자열을 정의한 XML 파일 등이 들어있는데 각 파일의 유형에 따른 하위 폴더들이 만들어져 있음</p></li>
							<li><p class="p-tag-desc">(레이아웃 파일[/res/layout], 그림 파일[/res/drawable], 문자열을 정의한 XML 파일[/res/values])</p></li>
						</ul>
						
						<ul>
							<li><h4 style="margin-top: 20px">4. /gradle</h4></li>
							<li><p class="p-tag-desc">*개발환경이 자동으로 만들어 내는 소스 파일이 들어가는 폴더</p></li>
							<li><p class="p-tag-desc">*안드로이드 각종 라이브러리를 추가할 수 있음</p></li>
							<li><p class="p-tag-desc">*안드로이드 빌드,타켓 버전 등을 설정할 수 있음</p></li>
						</ul>
		
					<header>
						<p class="p-tag-desc">간략하게 설명했지만, 보통 이정도만 알아도 처음 프로젝트 개발을 하는데 있어 막히진 않을 것이다.<br>
						 안드로이드 프로젝트 구조를 큰 맥락에서 이해하는 것에 도움이 되길 바라며...</p>
					</header>
					</article>

				</div>
			</div>
		</section>
		
		
		
			<section class="wrapper style1" style="margin-top:20px">
			<div class="container">
				<div id="content">

					<!-- Content -->

					<article>
						<header>
							<h2>2. 안드로이드 네트워크 작업시 주의해야 할 점</h2>
							<p>2016-11-02</p>
							<p class="p-tag-desc">안드로이드에서 예를 들어 외부에 있는 어플리케이션이나 서버로부터 대용량 또는 지속적인 통신을 통해 데이터를 주고받을 때 주의할 점!!<br>
						필자는 웹 URL을 통해 대용량 이미지를 다운받고자 했는데 어쩐일인지 자꾸 앱이 뻥나는(앱이 종료..ㅎ) 현상이 발생했다.<br></p>
					</header>
					
					<p class="p-tag-desc">
					그 이유는 안드로이드는 기본적으로 Main 이라는 스레드가 주로 돌고있는데,<br> 웹이나 서버를 통해 네트워크 작업을 실시할 때도 무리하게 Main 스레드를 사용하면...과부하가 걸려 앱이 뻥난다.</br>
					따라서 메인스레드 대신 새로운 스레드를 생성해서 네트워크 작업을 위임하는 것이 좋은 자세이다.<br><br></p>
					
						<p class="p-tag-desc">우리는 AsyncTask라는 놈을 클래스 상속받아 네트워크 작업을 일임할것이다.
						<br>AsyncTask를 모르면 아래를 참고!!<br> 
						<a href="http://itmining.tistory.com/7">http://itmining.tistory.com/7</a> </p>
			
			
						<span class=""><img
							src="" alt="" style="margin: 20px auto;" /></span>
						
					<header>
						<p class="p-tag-desc">혹 안드로이드(모바일이기 때문에 더 메모리와 OS관리가 중요..)가 아닌 다른 개발을 하더라도 항상 과부하가 될 가능성,<br> 과부하를 해소할 해결책 등을 생각하면서 개발하는 것이 좋은 자세이다.<br>
						그렇다고 너무 많은 스레드를 생성하면 곤란하다. 항상 과유불급을 생각하자</p>
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
