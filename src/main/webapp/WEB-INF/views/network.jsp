<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<html>
	<head>
		<title>Strata by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 		<script src="/resources/assets/js/ie/html5shiv.js"></script> -->
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
<!-- 		<link rel="stylesheet" href="/resources/assets/css/ie8.css" /> -->
	</head>
	<body id="top">

		<jsp:include page="navi.jsp" flush="false"/>

		<!-- Main -->
			<div id="main">

			<h1 style="color: #004D40">#네트워크</h1>

				<!-- One -->
					<section id="one">
						<header class="major">
							<h3>1. 인트라넷/엑스트라넷</h3>
						</header>
							
						<br/>
						<h5>인트라넷 ( IntraNet )</h5>
						<p>내부 네트워크, 인터넷,웹브라우져등과 같은 기능을 회사 내부 업무에서도 사용하자는 것에 초점. 특정 사람에게만 사용할 수 있도록 함 ex ) 사내메일시스템,인사시스템<br/>
						</p>
							
						<br/>
						<h5>익스트라넷 ( ExtraNet )</h5>
						<p>인트라넷과 거의 유사하지만, 인트라넷을 그 기업의 종업원 이외에도 협력회사나,고객에게 사용할 수록 있도록 한 점이 가장 큰 차이점<br/>
						</p>
						
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
	
	
	
					<!-- One -->
					<section id="one">
						<header class="major">
							<h3>2. LAN/WAN</h3>
						</header>
							
						<br/>
						<h5>LAN ( Local Area Network )</h5>
						<p>랜 이란 Local Area Network의 약자로 Local 즉 어느정도 한정된 공간에서 네트워크를 구성한다는 뜻. 례를 들어 한 사무실에 컴퓨터가 30대가 있는데 이것들을 네트워크로
						구성한다면, 이런 경우 사무실에 LAN을 구축한다고 통상 말한다. 쉽게 근거리 네트워크정도로 생각하자.
						</p>
							
						<br/>
						<h5>WAN ( Wide Area NetWork )</h5>
						<p>WAN은 LAN과 비교되는 말로 Wide Area Network의 약자로 멀리 떨어진 곳(지역)까지 서로 연결하는 경우라고 생각하면 된다. 요즘은 인터넷을 사용하니 LAN이나 WAN의 구분 없이
						공존한다고 보면 된다. 즉 WAN은 서로 멀리 떨어진 곳(지역)까지 서로 통신할 수 있도록 네트워크를 연결하는 것! 이다.
					    <br/>
						</p>
						
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
					
					
					
						<!-- One -->
					<section id="one">
						<header class="major">
							<h3>3. 이더넷/토큰링</h3>
						</header>
						
						<h5>이더넷 ( Ethernet )</h5>
						<p>이더넷은 네트워킹의 한 방식입니다. 즉 네트워크를 만드는 방법 중 하나라고 생각하면 됩니다.<br/> 현재  사용하고 있는 네트워킹 방식의 거의 90%가 이 방식입니다.<br/>
						이더넷의 가장 큰 특징은 <span style="font-weight:bold; color: #004D40" >CSMA/CD ( Carrier Sense Multiple Access/Collision Detection )</span>프로토콜을 사용하는 통신 방식입니다.<br/>
						CSMA/CD 방식은 통신하고자 하는 컴퓨터가 네트워크를 살펴봐서 아무도 통신을 하고 있지 않으면( 네트워크에 통신이 발생되면 carrier어 발생되고 이것이 감지되면 누군가 데이터를 나 말고 전달했다는 사실을 알게됨.), 무조건 자신의 데이터를 실어서 보내고 잘 도착했는지 확인해보는 방식이며, 그런데 만약
						동시에 두 개 이상의 컴퓨터에서 데이터를 실어보내려고 하면 충돌이 방생된다.( 동시에 데이터를 다른 디바이스에서 보냈을 경우 충돌이 발생 따라서 충돌이 발생했는지 탐지해야하는데 이것을 collision detection 이라고 함.) 이 것을 콜리전이라고 하며, 이 콜리전이 발생하면  충돌된 PC들은 자신이 보내려했던 데이터를 랜덤한 시간 동안 대기했다가
						다시 전송하는 방식을 취한다.( 15번이상 보냈는데 실패하면 포기..)</p>
						
						<br/>
						<h5>토큰링 ( TokenRing )</h5>
						<p>토큰링 또한 네트워킹의 방식 중 하나이다. 토큰링은 이더넷처럼 자기가 보내고싶을때 다른 장비에서 전송하고 있지 않다면 막 보내는 방식이 아니라, 오직 토큰을 가진 PC에서만 네트워크에
						데이터를 실어 보낼 수 있는 방식이다.(보통 하나의 네트워크에는 하나의 토큰링이 존재한다.)<br/>
						장점은 콜리젼이 발생되지 않는다. 단점은 현재 내가 보내고 싶은 데이터가 있다고 해도 코튼을 가지고 있지않다면 내차례가 올때까지 대기해야하며, 보낼 데이터가 없는 장비에도 토큰이 의무적으로
						전달 받기 때문에 낭비가 될 수 있다. 요즘은 거의 쓰지 않는 방식 역사의 뒤안길로...  </p>
					  	
						<br/>
					  	<h5>알아두기</h5>
					  	<p>네트워킹 방식은 이더넷/토큰링 말고도 FDDI 방식, ATM 방식 도 있다. 기억할 점은 어떤 네트워킹 방식을 사용하느야에 따라 랜카드부터 모든 네트워크 장비들을 다르게 구입해야한다는 사실.</p>
					  
					  
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
	
	
	
	
				<!-- One -->
					<section id="one">
						<header class="major">
							<h3>4. UTP케이블</h3>
						</header>
						
						<h5>UTP 케이블</h5>
						<p>어느 통신장비를 막론하고 통신장비 끼리 연결시켜주는 선. 즉 통신케이블 대표적으로 UTP 케이블이 제일 많이 사용
						TP란 Twisted-pair 즉 '꼬인케이블'이며, UTP는 Unshielded TP 즉 감싸지 않은 케이블입니다. STP는 그 반대겠죠?
						STP는 보통 UTP보다 성능이 좋고 비쌉니다. 하지만 기존 UTP로 네트워크가 많이 구축되었기 때문에 STP는 토큰링 네트워크에서 한정적으로 
						사용됩니다. </p>
						
						<img alt="UTP" src="/resources/images/network/network_utp.png" style="margin-bottom: 20px">
				
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
	
	
	
	<!-- One -->
					<section id="one">
						<header class="major">
							<h3>5. 맥 어드레스</h3>
						</header>
						
						<h5>MAC ( Media Access Control )</h5>
						<p>통신을 하기 위해서는 반드시 서로를 구분할 주소가 필요하다. 우리가 생각하는 일반적인 주소는 IP 주소일텐데 이녀석도 결국에는 맥 어드레스를 사용한다.
						무슨말이냐 하면, IP주소도 결국엔 MAC으로 바꾸는 절차가 있다는 것이다. (IP주소 -> MAC 주소 이과정을 ARP라고함 ARP:Address Resolution Protocol)
						그래서 MAC은 무엇이냐 MAC은 네트워크에 붙는 각 장비들은 48bit주소를 뜻한다. 이 주소는 랜카드 또는 네트워크 장비에 이미 고정되어 있는 주소이고 전세계에서 유일한 주소이며, 하드웨어의
						주소라고 할 수 있다. 맥 어드레스는 하이픈(-), 콜론(:), 점(.) 으로 구분되어 지는데 예를 들어 다음과 같이 나타내진다.</p>
						<h5>00-60-97-8F-4F-86<br/>00:60:97:8F:4F:86<br/>0060.978F.4F86</h5>
						<P>다른 표현법이지만 모두 같은 맥 어드레스이다. 그런데 2진수로 48비트를 표현하면 48자리니까 개발자 입장에서 너무 보기 힘들다..
						따라서 2진수 48비트를 16진수로 표현해서 12자리로 표현해 놓은 것이다. ( 2진수 4개를 묶으면 16진수 1개이다. 2의4승이 16이니까..ㅎ)
						<br>또 맥 어드레스의 앞쪽부터 6개의 16진수가 벤더 즉 생산자를 나타내는 코드입니다. 이 코드를 OUI(Organizational Unique Identifier)라고 합니다.
						즉 이 코드는 메이커에 다라 다르기 때문에 우리가 맥 어드레스 앞 부분 주소를 보면 어느 회사에서 만든 통신 제품인지 알 수 있습니다. 그럼 나머지 6자리의 수는 메이커에서 각 장비에 분배되는 Host Identifier 이다. 한마디로
						시리얼 넘버라고 한다. 즉 정리하면 앞쪽 6자리는 약속된 규정에 따라 각 네트워크 장비를 만드는 회사에게 분배해주는 번호이고 나머지 반은 회사 내에서 장비를 구분하기 위해 일련번호로 만들어 부여하는 것이다.</P>
						<h5>00-60-97-8F-4F-86</h5><p>006097 은 회사가 부여받은 번호. 나머지 0060970000 ~ 006097FFFF 까지는 각 장비를 구분하는 시리얼 넘버의 범위이다. (FF란 16진수로 표현하면 가장 큰 값이다. 십진수로 환산하면 15가 된다.)</p>			
						<img alt="MacAddress" width="800px" src="/resources/images/network/network_mac_address.png" style="margin-bottom: 20px">
				
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
	
	
		<!-- One -->
					<section id="one">
						<header class="major">
							<h3>6. 유니캐스트,브로드캐스트,멀티캐스트</h3>
						</header>
					
							<img alt="MacAddress" width="300px" src="/resources/images/network/unicast.png" style="margin-bottom: 20px;">	
						<h5>유니캐스트 ( Unicast )</h5>
						<p>유니캐스트는 1:1로 데이터를 전달하는 통신 방식이다. 구체적으로 데이터를 보내는 PC는 자신의 맥어드레스를 적고 받는 쪽 PC의 맥어드레스도 적어 프레임에 감싸 데이터를 전달한다. 그 다음 같은 지역의 로컬 네트워크 환경은 일반적으로 Shared한 통신 방식을 취하기 때문에,
						  일단 같은 네트워크 서식지에 있는 모든 PC는 프레임 받게된다. 각각의 PC는 받는쪽 맥어드레스와 자신의 랜 카드 맥어드레스를 비교하여, 맥어드레스가 서로 다르다면 CPU에게 보내지 않고 프레임을 폐기처분한다. 만약 맥 어드레스가 같다면 PC는 CPU위에 프레임을 올린다.(브로드캐스트 경우 PC 성능이 떨어질수 있는데, 그 이윤 
						  모든 프레임을 다 CPU에 올리기 때문이다.)</p>			
							
							<img alt="MacAddress" width="300px" src="/resources/images/network/broadcast.png" style="margin-bottom: 20px;">	  
						  <h5>브로드캐스트 ( BroadCast )</h5>
						<p>브로드캐스트는 같은 네트워크 서식지에 있는 모든 PC들에게 데이터를 주는 방식이다. 즉 패킷,프레임을 받는 PC의 맥어드레스 주소가 실제 프레임에 적혀있는 맥 어드레스와 일치하지 않더라도 폐기하지 않고 CPU에게 인터럽트를 걸고 우선적으로 받은 패킷을 처리하게한다.
						즉 자신의 랜카드 맥어드레스 주소와 일치하지 않는 패킷을 받더라도 PC는 CPU에게 패킷을 처리하게 시킨다. 따라서 너무 많은 브로드캐스트는 같은 서식지의 네트워크에 많은 노드를 발생시켜 혼잡을 야기하며, 그 안에 거주하는 PC의 CPU에 성능을 저하시킬 수 있다. 그럼 보통 이 브로드캐스트를 왜 이용할까?
						만약 받는 PC의 MAC주소는 모르고 IP주소만 알고있을 때 받는 PC의 MAC주소를 알기 위해 브로드캐스트를 날린다. 즉 같은 네트워크 안에서 "다들 들으세요 여기 이런IP주소 가진 PC있으면 알려줘!" 라고 외친다. 그럼 해당 PC는 자신의 MAC주소를 전달해준다. 결국 IP주소를 MAC주소로 바꾸는 과정 ,얻어내는 과정 이를 ARP(Address Resolution Protocol)이라고 한다.
						그 외에도 서버가 다수의 클라이언트에게 서비스하기위해서 브로드 캐스트는 사용된다. </p>		
				
					<img alt="MacAddress" width="300px" src="/resources/images/network/multicast.png" style="margin-bottom: 20px;">			  
						<h5>멀티캐스트 ( Multicast )</h5>
						<p>멀티캐스트는 200명에 사용자가 있는 네트워크에서 150명의 사용자에게만 데이터를 주고싶을 때 사용합니다. 즉 특정 그룹에게 데이터를 보내는 방식입니다.
						유니캐스트로 150명에게 각각 150번씩 보낼 수있지만 이것은 서버에게 미친짓입니다. 브로드캐스트로 한번에 때릴 수도있지만, 이것역시 50명에겐 불필요한 데이터를 주어 CPU에 영향을 줍니다.
						따라서 멀티캐스를 사용해야하는데 멀티캐스트는 라우터와 스위치가 멀티캐스트지원을 해줘야 가능합니다.( 지원하지 않는 라우터는 멀티캐스트를 브로드캐스트마냥 무조건 버립니다. 라우터는 기본적으로 브로드캐스트를 막는 성질이있습니다. 지원하지 않는 스위치는 멀티캐스트를 브로드캐스트마냥 모든 포트에게 전부 뿌려줍니다.)</p>			
						 
						  
					
				
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
	
	
	
	<!-- One -->
					<section id="one">
						<header class="major">
							<h3>7. OSI 7 Layer(계층)</h3>D
							<h3>OSI (Open Systems Interconnection)</h3>
						</header>
					
							<img alt="MacAddress" src="/resources/images/network/osi_layout.gif" style="margin-bottom: 20px;">	
						<h5>OSI 7 Layer(계층)이 탄생한 이유?</h5>
						<p>통신에 관한 국제표준기구인 ISO(International Organization for Standardization)라는 곳에서 통신이 일어나는 과정을 7단계로 나누고 표준화를 시켰다.
						그 이유는 크게 3가지이다.</p>			
							
						<br/>
						  <h5>1. 데이터의 흐름을 한눈에 볼 수 있다.</h5>
						<p>당연한 말이다. 통신이 이루어지면서 데이터가 어떻게 흘러가는지 어플리케이션계층부터 피지컬계층까지를 나누어 놓으니까 한 눈에 통신의 과정을 한눈에 파악하기 쉽다.</p>		
				
							<br/>
						  <h5>2. 문제를 해결하기가 편하다.</h5>
						<p>통신 과정을 7단계로 나누었기 때문에 통신에 문제가 발생됬을 때 각 계층별로 문제가 없는지 파악하여 통신장애 원인을 규명하기 편리하다.</p>		
				  
				  		<br/>
						  <h5>3. 여러장비를 써도 네트워크간 호환이 된다.</h5>
						<p>네트워크 장비를 개별적으로 다르게 쓰는 회사여도 기본적으로 통신 표준화를 지키면서 통신하기 때문에 네트워크 통신 장비 호환성이 보장된다.</p>		
				  
				  
				 	    <br/>
						<h5>1. Physical Layer</h5>
						<p>맨 아래 계층임. 주로 전기적, 기계적, 기능적인 특성을 이용해서 통신 케이블로 데이터를 전송.<br>
						이 계층에서 사용하는 통신 단위는 비트이며, 이것은 0과1로 나타내어지는 전기적 상태 ON/OFF 상태임. <br>
						피지컬은 단지 데이터를 전달만 할 뿐! 어떻게 보내는것이 효율적인지, 어떤 종류의 데이터인지, 에러가 있는지 없는지 관심이 없다.<br>
						(케이블, 리피터, 허브 등)</p>		
				  
					
						<br/>
						<h5>2. Data-Link Layer</h5>
						<p>피지컬 레이어를 통하여 송수신되는 정보의 오류와 흐름을 피지컬레이어 대신 관리하며, 안전한 정보의 전달을 할 수 있도록 도와주는 계층.<br>
						따라서 통신에서의 오류를 찾아주고, 데이터를 재전송하는 기능도 탑재. <br>
						일전에 배운 맥어드레스를 가지고 통신할 수 있게 한다. 이 계층에서의 통신 단위는 프레임(Frame) <br>
					 	(브리지, 스위치) </p>		
					 	
					 
					 	<br/>
						<h5>3. Network Layer</h5>
						<p>네트워크의 꽃인 계층 가장 중요한 기능은 데이터를 목적지까지 가장 안전하고 가장 빠르게 전달하는 것이 목표.<br>
						보통 이것을 라우팅이라고 함. 따라서 경로를 선택하고 주소를 정하고 경로에 따라 패킷을 전달해주는 것이 이 계층의 주 업무.<br>
						이 역할을 라우터라는 녀석이 함. 요즘은 스위치중에서도 라우팅기능을 탑재하는 성능좋은 스위치가 나오고 있어 스위치를 3 Layer 장비라고도 함.<br>
						(라우터,스위치(라우터기능탑재))</p>
						
						<br/>
						<h5>OSI 알아둬야 할 개념</h5>
						<p>첫번째 OSI그림을 보면 알 수 있듯이 어플리케이션에서 피지컬레이어까지 데이터가 내려갈 때마다 각 계층에서 데이터를 포장한다.<br>
						데이터 앞에 헤더가 붙는 것이라고 보면 됩니다. 예를 들어 네트워크 3계층에서 헤더에는 목적지 IP주소가 붙고, 맨 아래 피지컬 1계층에 헤더에는 컴퓨터가 이해하는 이진수 0과1로 바꾼 전기적 신호가 포장됩니다.<br>
						이제 잘 포장된 데이터를 받은 PC는 포장을 하나씩 뜯으면서 어플리케이션 계층까지 올립니다. 그때가 비로소 데이터전달이 끝나는 시점입니다.
					    <br>참고로 네트워크 속도가 명시된 속도보다 늦은 이유는 바로 이 포장하는 일 때문입니다. 오리지널 데이터에 지나가는 계층마다 헤더에 포장을 하니
					      데이터가 더 커지기 때문에 기대했던 네트워크 통신 속도가 나지 않는 것입니다.</p>
						
									
				  
				  
					
					
					
				
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>
	
	
	<div class="row"></div>
				

				<!-- Three -->
					<section id="three">
						<h2>Get In Touch</h2>
						<p>Accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque lorem ipsum dolor.</p>
						<div class="row">
							<div class="8u 12u$(small)">
								<form method="post" action="#">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)"><input type="text" name="name" id="name" placeholder="Name" /></div>
										<div class="6u$ 12u$(xsmall)"><input type="email" name="email" id="email" placeholder="Email" /></div>
										<div class="12u$"><textarea name="message" id="message" placeholder="Message" rows="4"></textarea></div>
									</div>
								</form>
								<ul class="actions">
									<li><input type="submit" value="Send Message" /></li>
								</ul>
							</div>
							<div class="4u$ 12u$(small)">
								<ul class="labeled-icons">
									<li>
										<h3 class="icon fa-home"><span class="label">Address</span></h3>
										1234 Somewhere Rd.<br />
										Nashville, TN 00000<br />
										United States
									</li>
									<li>
										<h3 class="icon fa-mobile"><span class="label">Phone</span></h3>
										000-000-0000
									</li>
									<li>
										<h3 class="icon fa-envelope-o"><span class="label">Email</span></h3>
										<a href="#">hello@untitled.tld</a>
									</li>
								</ul>
							</div>
						</div>
					</section>




			
		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>



	</body>
</html>
<!--comment-->