<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.yr.dto.*" %>
<%@ page import="com.yr.dao.*" %>

<!--
	1. 작성자 : 김유라(다른 팀원 코드는 주석에 표기)
	2. 파일의 역할 : 의사결정 요청 페이지
 -->


<%
	ArrayList<MyWorkspaceDto> list2 = (ArrayList<MyWorkspaceDto>)request.getAttribute("list2");
	ArrayList<MyPartnerDto> list1 = (ArrayList<MyPartnerDto>)request.getAttribute("list1");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>dm1</title>
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<script src="js/jquery-3.6.0.min.js"></script>
	<link href="CollaStyle/0dm1.css" rel="stylesheet" type="text/css">
	
	<script>
	$(function (){
		$('#dm1_textarea').height(1).height( $(this).prop('scrollHeight') );
		$(document).click(function(e){
        	if(e.target.id != 'dm1_pic_btn') {   
		       	if($(".select_pic").has(e.target).length==0) {
		       		$('.select_pic').css('display', 'none');
		       	}
        	}
        });
		
       	$('.dm1_btn20').click(function (){
        	if($(".dm1_selection").css('display')=='none') {
        		$('.dm1_selection').css('display','block');
        	} else {
        		$('.dm1_selection').css('display','none');
        	}
      	});
		
       	var textEle = $('#dm1_textarea');
    	textEle.on('keydown', function() {
    		$(this).height(1).height( $(this).prop('scrollHeight') );	
      	});
    	
    	$(document).on("click", '.dm1_list', function(){ //리스트 선택하면 그값으로 바뀌고 리스트 닫힘
            var name = $(this).text();
    		var picture = $(this).find('.pi').attr("style");
    		var memberId = $(this).attr("memberId");
            $("#pic_sel").removeClass("dm1_hidden");
            $("#pic_sel").attr("style", picture);
            $("#pic_sel").css("display", "block");
            $("#pic_sel").attr("memberId", memberId);
            $('.dm1_pic_btn').html(name).css("color", "rgb(0, 0, 0)");
            $('.select_pic').css('display', 'none');
            $("#dm1_svg111").css("display", "block");
        });
    	
    	$(document).on("click", '.dm1_pic_btn', function (e){
    		if($('.select_pic').css('display')=='none') {
	        	$('.select_pic').css('display', 'block');
	        	$('.dm1_pic_btn').html("결정자 선택").css("color", "rgb(193, 193, 193)");
	        	$("#dm1_svg111").css("display", "none");
	        	$("#pic_sel").addClass("dm1_hidden");
    		} else {
        		$('.select_pic').css('display','none');
    		}
      	});
    	
    	
    	$("#dm1_file2").click(function(){
    		alert("준비중입니다.");
    	});
    	
    	$('#dm1_file0').click(function(e){
    		e.preventDefault();
    		$('.dm1_selection').css('display','none');
    		$('#dm1_file').click();
    	});
    	
    	
    	$('.dm1_file_container2').hover(function(){
    		$('.dm1_file_container4').css('opacity', '1');
    	}, function(){
    		$('.dm1_file_container4').css('opacity', '0');
    	});

    	
    	//협업공간 리스트 뜨기 
	   $(".dm1_dropdown").click(function() {
        	var px = $(this).offset().left;	// 클릭한 현재위치 가로 
        	var py = $(this).offset().top+ 25;
        	$(".workspace_list").css('left',px+'px');
        	$(".workspace_list").css('top',py+'px');
			$(".workspace_list").css('display', 'block');
			$("#dm1_div_background").css('display', 'block');
	        $(".dm1_bottom_box5>span").html("공간 검색").css("color", "rgb(136, 136, 136)");
	        $("dm1_bottom_box_svg1").css({visibility:"hidden", opacity:0});
		});

      	$("#dm1_div_background").click(function() {
        	$("#dm1_div_background").css('display', 'none');
      		$(".workspace_list").css('display', 'none');
      	});
	    $(".workspace_list > ul > li ").click(function(){ //리스트 선택하면 그값으로 바뀌고 리스트 닫힘
	        // .input_workspace_name 에 workspace_name 넣기
	        var workspace1 = $(this).find("span").text();
	        //alert(workspace1);
	        //$(".input_workspace_name").val(workspace1);
	        // workspace_id input에 넣기
	        var workspace_id = $(this).find(".workspace_id_dm1_modal").text();
	        //alert(workspace_id);
	        $(".input_workspace_id").val(workspace_id);
	        //var workspace = $(this).text();
	        if(workspace1=="프라이빗 공간"){ //프라이빗 선택하면 색 바뀜. 
	           $(".dm1_bottom_box5>span").html("프라이빗 공간").css('color', 'rgb(217, 173, 43)');
	           $(".dm1_dropdown").css('border', "1px solid rgb(217, 173, 43)");
	           $(".dm1_btn21").css({border:"1px solid rgb(217, 173, 43)", 'background-color':"rgb(217, 173, 43)"});
	           $(".dm1_bottom_box_svg1").css("fill","rgb(217, 173, 43)");
	        } else{
	        	$(".dm1_bottom_box5>span").html(workspace1).css('color', 'rgb(51, 132, 108)');
	        	$(".dm1_dropdown").css('border', "1px solid rgb(51, 132, 108)");
	            $(".dm1_btn21").css({border:"1px solid rgb(51, 132, 108)", 'background-color':"rgb(51, 132, 108)"});
	            $(".dm1_bottom_box_svg1").css("fill","rgb(51, 132, 108)");
	        }
	        $("#dm1_div_background").css('display', 'none');
      		$(".workspace_list").css('display', 'none');
	        $("#workspace_container_arrow").css({visibility:"visible", opacity:1});
	    });

	    $(".workspace_list li").hover(function (){
	        $(this).css("background-color", "rgb(242,242,242)");
	    }, function(){
	        $(this).css("background-color", "rgb(255, 255, 255)");
	    });
	    
	    var modal = document.getElementById('myModal');
	    var span = document.getElementsByClassName("dm1_close")[0];
	    var piclist = document.getElementById("selectpic");
	    var filelist = document.getElementById("dm1_selection");
	    	
	    btn.onclick = function(e){
	        modal.style.display = "block";
	    }
	    span.onclick = function(e){
	        modal.style.display = "none";
	        piclist.style.display = "none";
            filelist.style.display = "none";
	    }
	    window.onclick = function(event) {
	        if (event.target == modal) {
	        	alert("수정 중인 의사결정을 저장하지 않고 나가시겠습니까?");
	            modal.style.display = "none";
	            piclist.style.display = "none";
	            filelist.style.display = "none";
	        }
	    }
    
	});
	</script>
</head>
<body style="overflow-y: hidden">
	<div class="workspace_list">
		<ul class="left-bar icon_color" id="dm1_ul">
			<li style="margin-bottom: 0px;">공간 검색</li>
			<%
				for(int i = 0; i<list2.size(); i++){
			%>
			<li>
				<svg viewBox="0 0 24 24" width="16px" height="16px"><path d="M14.027 5L13.6 3H4v18h2v-7h6l.533 2H20V5z"></path></svg>
				<span><%=list2.get(i).getWorkspace_name() %></span>
				<div style="display: none;" class="workspace_id_dm1_modal"><%=list2.get(i).getWorkspace_id() %></div>
			</li>
			<%
				}
			%>
		</ul>
	</div>
	<div id="dm1_div_background"></div>


    <div id="myModal" class="dm1_modal">
      <div class="dm1_modal-content">
      <div class="dm1_modal_header">
      	<span>의사결정 요청</span>
        <span class="dm1_close">&times;</span>       
      </div> 
      <form action="Controller?command=dm1_write_action">                                                     
      <div class="dm1_modal_body">
      	<div class="dm1">
      		<svg style="margin-top: 4px; margin-right: 4px; fill: rgb(193, 193, 193);" viewBox="0 0 24 24" width="24px" height="24px"><path d="M2.833 4h13.75c.633 0 1.128.32 1.458.807L23 12.25l-4.96 7.434c-.33.486-.888.816-1.52.816H2.832A1.839 1.839 0 0 1 1 18.667V5.833C1 4.825 1.825 4 2.833 4zm11.917 9.625c.76 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375-.76 0-1.375.614-1.375 1.375 0 .76.614 1.375 1.375 1.375zm-4.583 0c.76 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375s-1.375.614-1.375 1.375c0 .76.614 1.375 1.375 1.375zm-4.584 0c.761 0 1.375-.614 1.375-1.375 0-.76-.614-1.375-1.375-1.375-.76 0-1.375.614-1.375 1.375 0 .76.614 1.375 1.375 1.375z" color="#C1C1C1" class="Beecon__Path-sc-3x6pq4-1 dBeMQs"></path></svg>
      		<textarea id="dm1_textarea" name = "dm_title" maxlength="1001" placeholder="시안 컨펌 부탁드립니다. @기뮤라" class="dm1_textbox"></textarea>
      	</div>
      	<div class="dm1_modal_mid">
      	<div class="dm1_pii" id="pic_sel">
      	</div>
      	<div>
      		<button type="button" class="dm1_pic_btn" id="dm1_pic_btn" memberId="">결정자 선택</button>
      	</div>
      	<div class="dm1_svg_box">
      		<svg viewBox="0 0 24 24" width="16px" height="16px" id="dm1_svg111"><path d="M17.0278306,8 C18.1356358,8 18.40014,8.63354932 17.6171348,9.41655445 L13.4502437,13.5834455 C12.6679023,14.365787 11.40014,14.3664507 10.6171348,13.5834455 L6.45024373,9.41655445 C5.66790231,8.63421303 5.93074941,8 7.03954794,8 L17.0278306,8 Z"></path></svg>
      	</div>
      	</div>
      <div class="select_pic" id="selectpic">
	<%
		for(int i = 0; i<list1.size(); i++){
			if(list1.get(i).getPicture() != null){
			%>   	
			   	<div class="dm1_list" memberId="<%= list1.get(i).getMy_partner() %>">
			   		<button class="pi" style="background-image : url(<%= list1.get(i).getPicture() %>)"></button><span class="dm1_name"><%=list1.get(i).getName() %></span>
			   	</div>
			<%
			}else{
			%>   	
			   	<div class="dm1_list" memberId="<%= list1.get(i).getMy_partner() %>">
			   		<button class="pi" style="background-image : url(https://down.collabee.co/userProfile/1)"></button><span class="dm1_name"><%=list1.get(i).getName() %></span>
			   	</div>
			<%
			}
		}
	%>   	
	</div>
<!-- 원래여기파일자리였음 -->
      </div>
      
     <div class="dm1_modal_footer">
     <button type="button" class="dm1_btn20" id="dm1_btn20">
     <svg fill="rgb(136, 136, 136)" viewBox="0 0 24 24" width="21px" height="21px"><path d="M16.5 6v11.5c0 2.21-1.79 4-4 4s-4-1.79-4-4V5a2.5 2.5 0 0 1 5 0v10.5c0 .55-.45 1-1 1s-1-.45-1-1V6H10v9.5a2.5 2.5 0 0 0 5 0V5c0-2.21-1.79-4-4-4S7 2.79 7 5v12.5c0 3.04 2.46 5.5 5.5 5.5s5.5-2.46 5.5-5.5V6h-1.5z" class="Beecon__Path-sc-3x6pq4-1 jRUwgg"></path></svg>
     </button>
     <div class="dm1_bottom_box">
     <div class="dm1_bottom_box2">
     	<div class="dm1_dropdown">
     		<div class="dm1_bottom_box3">
     			<div class="dm1_bottom_box4">
     				<div class="dm1_bottom_box5">
     				<input type="hidden" class="input_workspace_id" name="workspaceId"/>
     					<span>프라이빗 공간</span>
     					<svg viewBox="0 0 24 24" width="16px" height="16px" class="dm1_bottom_box_svg1"><path d="M17.0278306,8 C18.1356358,8 18.40014,8.63354932 17.6171348,9.41655445 L13.4502437,13.5834455 C12.6679023,14.365787 11.40014,14.3664507 10.6171348,13.5834455 L6.45024373,9.41655445 C5.66790231,8.63421303 5.93074941,8 7.03954794,8 L17.0278306,8 Z"></path></svg>
     				</div>
     			</div>
     		</div>
     	</div>
     </div>
     <button type="submit" class="dm1_btn21">저장</button>
     </div>
     </div>
     </form>  
     
     
     <div class="dm1_selection" id="dm1_selection">
      <span class="dm1_ff">파일 첨부</span>
      <form method="post" enctype="multipart/form-data">
      	<input type="file" id="dm1_file" name="file" onchange="uploadFile(this)" style="display: none;" multiple/>
      	<button class="dm1_file1" id="dm1_file0">내 컴퓨터에서 추가</button></form>
     	<button class="dm1_file1" id="dm1_file2">구글 드라이브에서 추가</button>
     </div>
     
      </div>
    </div>
    
</body>
</html>