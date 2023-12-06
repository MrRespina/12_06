
//	시작시 올려줘야 실행 됨.
$(function(){
	
	searchAddress();
	
});

//	미니플젝 시작?

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