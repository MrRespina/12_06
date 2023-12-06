$(function(){

	login();
	logout();
	searchAddress();
	
});

function login(){
	
	$('#loginBtn').click(function(e){
		
		let id = $('#inputId').val();
		let pw = $('#inputPw').val();
		location.href = "member.login?m_id="+id+"&m_pw="+pw;
		
	});
	
	$('#regMemberBtn').click(function (e){
		
		location.href = "member.signup?";
		
	});
	
	$('#inputId').keydown(function (e){
		
		if(e.keyCode==13){
			
			$('#loginBtn').click();
			
		}
		
	});
	
	$('#inputPw').keydown(function (e){
		
		if(e.keyCode==13){
			
			$('#loginBtn').click();
			
		}
		
	});

	
}

function logout(){
	
	$('#logOutBtn').click(function (){
		
		if(confirm('정말 로그아웃 하시겠어요?')){
			
			location.href="member.logout?";
			
		}
		
	});
	
}

function searchAddress(){
	
	$('#inputAddr,#inputPost').click(function (){
		
		new daum.Postcode({
			oncomplete : function(data){
				$('#inputPost').val(data.zonecode);
				$('#inputAddr').val(data.roadAddress);
			}
			
		}).open();
		
	});
	
}

