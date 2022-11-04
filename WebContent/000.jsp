<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--
	1. 작성자 : 김유라(다른 팀원 코드는 주석에 표기)
	2. 파일의 역할 : 의사결정 모달창
 -->
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="js/jquery-3.6.0.min.js"></script>
	<link href="CollaStyle/000.css" rel="stylesheet" type="text/css">
	
</head>
<body>
<div class="modal-backdrop">
	<div class="mini_dm2_layout">
		<div class="mini_x">
			<button class="mini_x_btn">
			<svg viewBox="0 0 24 24" width="35px" height="35px" class="mini_x_btn_svg"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path></svg>
			</button>
		</div>
		<div class="mini_dm2_layout2">
			<input type="file" class="mini_file" style="display: none;"/>
			<header class="mini_header">
				<div class="mini_header2">
					<a class="mini_header_wname" href="">프로젝트</a>
					<a class="mini_header_document">의사</a>
				</div>
				<div class="mini_header3">
					<button class="mini_header3_btn">
						<svg viewBox="0 0 24 24" width="20px" height="20px" class="mini_header3_svg" title="파일 추가"><path d="M16.5 6v11.5c0 2.21-1.79 4-4 4s-4-1.79-4-4V5a2.5 2.5 0 0 1 5 0v10.5c0 .55-.45 1-1 1s-1-.45-1-1V6H10v9.5a2.5 2.5 0 0 0 5 0V5c0-2.21-1.79-4-4-4S7 2.79 7 5v12.5c0 3.04 2.46 5.5 5.5 5.5s5.5-2.46 5.5-5.5V6h-1.5z"></path></svg>
					</button>
					<div class="mini_header3_div">
						<button class="mini_header3_btn2">
							<svg viewBox="0 0 24 24" width="19px" height="19px" class="mini_header3_svg2"><path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
						</button>
					</div>
				</div>
			</header>
			
			<main class="mini_main">
				<div class="mini_main_div1">
					<svg viewBox="0 0 24 24" width="32px" height="32px" class="mini_main_svg1"><path d="M2.833 4h13.75c.633 0 1.128.32 1.458.807L23 12.25l-4.96 7.434c-.33.486-.888.816-1.52.816H2.832A1.839 1.839 0 0 1 1 18.667V5.833C1 4.825 1.825 4 2.833 4zm11.917 9.625c.76 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375-.76 0-1.375.614-1.375 1.375 0 .76.614 1.375 1.375 1.375zm-4.583 0c.76 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375s-1.375.614-1.375 1.375c0 .76.614 1.375 1.375 1.375zm-4.584 0c.761 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375-.76 0-1.375.614-1.375 1.375 0 .76.614 1.375 1.375 1.375z" color="#c1c1c1" ></path></svg>
					<textarea class="mini_main_textarea" maxlength="1000" rows="1">문서제목</textarea>
				</div>
				<div class="mini_main_div2">
					<div class="mini_main_div2_writerName">
						<button class="mini_main_div2_btn"></button>
						<span class="mini_main_div2_span">유라짱</span>
					</div>
					<span class="mini_main_date">2022.07.21...</span>
				</div>
				<div class="mini_main_div3">
					<div class="mini_main_dm">
						<div class="mini_main_dm2">
							<svg viewBox="0 0 24 24" width="18px" height="18px" class="mini_main_dm2_svg"><path d="M2.833 4h13.75c.633 0 1.128.32 1.458.807L23 12.25l-4.96 7.434c-.33.486-.888.816-1.52.816H2.832A1.839 1.839 0 0 1 1 18.667V5.833C1 4.825 1.825 4 2.833 4zm11.917 9.625c.76 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375-.76 0-1.375.614-1.375 1.375 0 .76.614 1.375 1.375 1.375zm-4.583 0c.76 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375s-1.375.614-1.375 1.375c0 .76.614 1.375 1.375 1.375zm-4.584 0c.761 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375-.76 0-1.375.614-1.375 1.375 0 .76.614 1.375 1.375 1.375z" color="#c1c1c1"></path></svg>
							<span class="mini_main_dm3">대기</span>
							<div class="mini_main_dm4">
								<button class="mini_main_div2_btn"></button>
								<span class="mini_main_div2_span">유라짱</span>
							</div>
						</div>
						<div class="mini_main_dm5">
							<div>의사결정 기다리는 중</div>
							<div style="margin-right: 30px;">
								<button class="mini_main_dm5_btn">결정자 변경</button>
								<button class="mini_main_dm5_btn2">결정하기</button>
							</div>
						</div>
					</div>
					<div class="mini_more">
						<button class="mini_more_btn">
							<span>이전 의사결정( <span>2</span> )접기</span>
							<svg xmlns="http://www.w3.org/2000/svg" width="8" height="4" viewBox="0 0 8 4" class="mini_more_btn_svg"><path d="M8 4L4 0 0 4z" fill="#888888" fill-rule="evenodd"></path></svg>
						</button>
						<div class="mini_more_div">
							<div style="width: 100%; display: flex;">
								<ul>
									<div class="decisionDetail">
										<div class="decisionDetail_row1">
											<svg viewBox="0 0 24 24" width="18px" height="18px" class="decisionDetail_svg1"><path style="fill: rgb(189, 2, 25);" d="M21.167 4H7.417c-.633 0-1.128.32-1.458.807L1 12.25l4.96 7.434c.33.486.824.816 1.457.816h13.75A1.839 1.839 0 0 0 23 18.667V5.833A1.839 1.839 0 0 0 21.167 4zm-2.75 11.54l-1.293 1.293-3.29-3.29-3.291 3.29-1.293-1.292 3.29-3.291-3.29-3.29 1.293-1.293 3.29 3.29 3.291-3.29 1.293 1.292-3.291 3.291 3.29 3.29z" color="#BD0219"></path></svg>
											<span class="decisionDetail1" style="color: rgb(189, 2, 25);">반려</span>
											<div class="mini_main_dm4">
												<button class="mini_main_div2_btn"></button>
												<span class="mini_main_div2_span">유라짱</span>
											</div>
										</div>
										<div class="decisionDetail_row2">
											<span class="decisionDetail2">2022.8.3...</span>
										</div>
									</div>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</div>
</body>
</html>