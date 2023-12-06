<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/test.js"></script>
 <link rel="stylesheet" href="css/main.css">
</head>
<body>
	<table class = "submitTbl" border="1" align="center">
		<tr>
			<td>id</td><td><input name="inputId" placeholder="~10자리" maxlength="10"></td>
		</tr>
		<tr>
			<td>pw</td><td><input name="inputPw" type="password" placeholder="~12자리" maxlength="12"></td>
		</tr>
		<tr>
			<td>pw 확인</td><td><input name="checkPw" type="password" placeholder="~12자리" maxlength="12"></td>
		</tr>
		<tr>
			<td>이름</td><td><input name="inputName" maxlength="10" placeholder="~10자리"></td>
		</tr>
		<tr>
			<td>우편번호</td><td><input id="inputPost" maxlength="7" placeholder="xxx-xxx" readonly="readonly"></td>
		</tr>
		<tr>
			<td>주소</td><td><input id="inputAddr" maxlength="40" placeholder="주소지" readonly="readonly"></td>
		</tr>
		<tr>
			<td>상세주소</td><td><input id="inputDetailAddr" maxlength="40"  placeholder="상세주소" readonly="readonly"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><button id="submitBtn">입력 완료</button></td>
		</tr>
	</table>

</body>
</html>