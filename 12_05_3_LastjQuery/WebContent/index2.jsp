<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index2.jsp</title>
<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript">
		// 미리보기 이미지, 출처, 컬렉션
		
		$(function(){
			
			$('#imgTbl').empty();
			let th1 = $('<th></th>').text('미리보기');
			let th2 = $('<th></th>').text('출처');
			let th3 = $('<th></th>').text('컬렉션');
			let th4 = $('<th></th>').text('미리보기');
			let th5 = $('<th></th>').text('출처');
			let th6 = $('<th></th>').text('컬렉션');
			let trr = $('<tr></tr>').append(th1, th2, th3,th4,th5,th6);
			$('#imgTbl').append(trr);

			$('#imgInput').keyup(function(e){
				
				$('#imgTbl').empty();
				let th1 = $('<th></th>').text('미리보기');
				let th2 = $('<th></th>').text('출처');
				let th3 = $('<th></th>').text('컬렉션');
				let th4 = $('<th></th>').text('미리보기');
				let th5 = $('<th></th>').text('출처');
				let th6 = $('<th></th>').text('컬렉션');
				let trr = $('<tr></tr>').append(th1, th2, th3,th4,th5,th6);
				$('#imgTbl').append(trr);
				
				let imgVal = $('#imgInput').val();
				
				$.ajax({
					
					url : 'https://dapi.kakao.com/v2/search/image',
					data : { query : imgVal },
					beforeSend : function(req){
						req.setRequestHeader(
								'Authorization', 'KakaoAK eb43c48551b94f0ddc100b8a8020d311'		
						);
					},
					success: function(ee){
						
						
						
						let count = true;
						let tr;
						
						$.each(ee.documents,function(i,gg){
							
							let img = $('<img>').attr('src',gg.thumbnail_url);
							let td1 = $('<td></td>').append(img);
							let td2 = $('<td></td>').text(gg.collection);
							let td3 = $('<td></td>').text(gg.display_sitename);
							
							if(count == true){
								tr = $('<tr></tr>').append(td1,td2,td3);
								count = false;
							}else{
								tr.append(td1,td2,td3);
								count = true;
							}
							
							$('#imgTbl').append(tr);
							
						});
						
					}
					
				});
				
			});

			
		});
</script>
</head>
<body>
	<table border="1" align="center">
		<tr><td>검색어 입력 : <input id="imgInput" ></td></tr>
	</table>
	<hr>
	<table id="imgTbl" border="1" align="center" 
			style="font-size:30px;border:black solid 3px;border-radius: 3px;margin-top:10px;">
	</table>
</body>
</html>