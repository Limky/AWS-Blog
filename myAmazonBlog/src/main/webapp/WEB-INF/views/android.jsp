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

		<h1 style="color: #004D40">#안드로이드</h1>

<c:forEach var="android" items="${mAndroid}">
<!-- One -->
		<section id="one">
			<header class="major">
				<h3>${android.num}. ${android.title}</h3><p>${android.date}</p>
			</header>
			<p>${android.contents}
			</p>
			
					<ul class="actions" style="margin-top:50px">
						<li><input type="submit" value="Modify"/></li>
					    <li><input type="submit" value="Modify"/></li>
					</ul>
		</section>
		
</c:forEach>



		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>4. 안드로이드 기본 프로젝트 구조</h3>
			</header>
			<img src="/resources/images/android/android_project_structure.JPG"
				alt="" style="margin: 0 auto;" />

			<h5 style="margin-top: 20px">1. AndroidManifest.xml</h5>
			<ul>
				<li><p>보통 매니페스트라고 부르며, 앱의 구성요소나 권한등의 정보를 설정하고 정의함!</p></li>
				<li><p>앱에 대한 정보를 담고있음. 여기서 특히 앱 권한을 부여한다는 점을 꼭 기억</p></li>
			</ul>

			<h5>2. /java</h5>
			<ul>
				<li><p>자바 소스 파일이 들어있는 폴더로 [/app/src/main]폴더 안에 있음</p></li>
				<li><p>표준 자바와 마찬가지로 패키지명과 동일한 하위 폴더들이 만들어짐</p></li>
				<li><p>쉽게 생각해서 앱 UI를 동적으로 처리,컨트롤하고 앱의 백단 뒤에서 전반적인 처리를 함</p></li>
			</ul>

			<h5>3. /res </h5>
			<ul>
				<li><p>리소스 파일이 들어있는 폴더로 [app/src/main] 폴더 안에 있음</p></li>
				<li><p>XML 레이아웃,그림 파일,문자열을 정의한 XML 파일 등이 들어있는데 각 파일의 유형에 따른
						하위 폴더들이 만들어져 있음</p></li>
				<li><p>(레이아웃 파일[/res/layout], 그림 파일[/res/drawable], 문자열을
						정의한 XML 파일[/res/values])</p></li>
			</ul>

			<h5>4. /gradle</h5>
			<ul>
				<li><p>개발환경이 자동으로 만들어 내는 소스 파일이 들어가는 폴더</p></li>
				<li><p>*안드로이드 각종 라이브러리를 추가할 수 있음</p></li>
				<li><p>*안드로이드 빌드,타켓 버전 등을 설정할 수 있음</p></li>
			</ul>



		</section>




		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>5. 화면 가로모드 세로모드 설정</h3>
			</header>

			<h4>1. AndroidManifest.xml의 activity에 다음 항목을 추가</h4>
			<p>android:configChanges="orientation|screenSize"</p>
			<p>만약 screensize가 설정되어있지 않는다면, 앱이 회전될 때마다 activity의 Oncreate함수가
				불려지면서 다시 액티비티를 호출한다.</p>
			<br>
			<h4>2. onConfigurationChanged 오버라이드를 통해 가로,세로일 때 처리</h4>
			<p>
				@Override public void onConfigurationChanged(Configuration
				newConfig) { super.onConfigurationChanged(newConfig);<br> if
				(newConfig.orientation == Configuration.ORIENTATION_PORTRAIT) // 세로
				전환시<br> { // 배경 화면 교체 처리 }<br> else if
				(newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE)// 가로
				전환시<br> { // 배경 화면 교체 처리 } }
			</p>



			<br>
			<h4>3. Manifest.xml에서 화면을 고정하는 방법</h4>
			<p>android:screenOrientation="portrait" //세로모드</p>
			<p>android:screenOrientation="landscape" //가로모드</p>

			<br>
			<h4>4. Java 영역에서 화면을 고정 및 고정 센서 해체</h4>
			<p>setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
				//세로모드 고정</p>
			<p>setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR);
				//화면 센서 활성화</p>
		</section>






		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>6. 앱 다국어 설정하는 방법</h3>
			</header>

			<p>안드로이드는 기본적으로 res디렉토리파일아래 value아래 string.xml 파일을 지니고있다. 이 string.xml파일에서 앱내에서 보여지는 모든 string들을 res파일 아래 string.xml파일에 
			한데 묶어서 관리하는 컨셉을 잡아야 다국어 앱을 만들 수 있다. 즉 string을 비지니스 로직에 직접 하드코딩하지않고 string을 따로 빼서 res/value/string.xml에 몰아서 string을 관리한다.
			이렇게하면 앱내에서 언어코드를 바꿔주는 로직만 실행하면, 자동적으로 설정된 언어 value/sring.xml을 잡는다. value 파일명을 value-zh(중국어),value-en(영어),value-ja(일본어) 이런식으로
			각 언어코드에 맞는 value 폴더를 만들어 res 폴더 아래 생성해주면 다국어 처리를 자동적으로 해준다.</p>
			
<img src="/resources/images/android/res_image.JPG"
				alt="" style="margin-top: 20px;" /><br>
				
				<img src="/resources/images/android/res_string_image.JPG"
				alt="" style="margin-top: 20px;" /><br>
				<br>
				<p>
				언어코드를 설정해주는 로직을 java영역에서 처리해주면 끝.<br>
				Locale locale = new Locale(langCode);<br>
        Locale.setDefault(locale);<br>
        Configuration config = new Configuration();<br>
        config.locale = locale;<br>
        getBaseContext().getResources().updateConfiguration(config, getBaseContext().getResources().getDisplayMetrics());<br><br>
        
        이렇게 직접 앱내에서 언어코드를 설정할 수도 있지만, 안드로이드 os영역에서 언어설정을 변경시켜줘도 상관없다. 안드로이드 폰자체적으로 언어를 바꾸는 부분은 개발은 아니기 때문에 스크랩하지않는다. 엄청 간단하기도하고...므튼 방법은 프로젝트 취지에 더 맞는 방법을 사용하면 될 것이다.</p>
				
				
				
		</section>
		
		
		
		
			<!-- One -->
		<section id="one">
			<header class="major">
				<h3>7. 캐싱 이미지처리나, 큰 이미지 처리시 메모리 누수방지.</h3>
			</header>

			<p>메모리를 할당된 양 보다 초과되어 사용하거나, 많은 데이터를 잡아먹는 높은 해상도의 이미지를 로딩할 경우 Out of memory...라는 에러를 마주쳤을 때
			Dalvik 에서 각각의 어플리케이션에게 메모리 할당을 보장해주어야하는 크기는 최소 16M인데 최대 24M까지 늘려주면 어느정도 메모리 초과 현상을 잡을 수 있다.
			이는 HonyComb 3.1부터 좀 더 큰 Heap 사이즈를 할당 시킬 수 있는데, 다음과 같이 Manifest.xml에 Heap사이즈 속성을 추가해주면 된다.<br>
			application tag 안 속성에 android:largeHeap="true"라고 추가시켜주면 된다.
			</p>

				
		</section>
		
		
				
		
			<!-- One -->
		<section id="one">
			<header class="major">
				<h3>8. Android Monkey를 이용한 UI 테스트</h3>
			</header>

			<p>우선 Monkey란? Android에서 지원하는 UI 테스팅 툴로 터치,제스쳐 등의 이벤트를 랜덤으로 발생시키거나, 스크립트 파일을 이용해서 원하는 UI Action을 수행하도록 도와주는 UI 테스팅 도구이다.
			<br>이 툴은 안드로이드 SDK를 설치해서 ADB를 동작시킬 수 있는 환경이면 사용할 수 있따.</p>

				
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