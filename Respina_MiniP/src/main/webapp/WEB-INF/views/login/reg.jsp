<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="submitTbl" border="1" align="center">
		<tr>
			<td>id</td>
			<td><input name="inputId" class="regInput" placeholder="~10자리" maxlength="10"></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input name="inputPw" class="regInput" type="password" placeholder="~10자리"
				maxlength="12"></td>
		</tr>
		<tr>
			<td>pw 확인</td>
			<td><input name="checkPw"  class="regInput"  type="password" placeholder="~10자리"
				maxlength="12"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="inputName" class="regInput"  maxlength="10" placeholder="~10자리"></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><input id="inputPost"  class="regInput"  maxlength="7" placeholder="xxx-xxx"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input id="inputAddr" class="regInput"  maxlength="40" placeholder="주소지"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>상세주소</td>
			<td><input id="inputDetailAddr" maxlength="40" class="regInput" 
				placeholder="상세주소" readonly="readonly"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><button id="submitBtn">입력
					완료</button></td>
		</tr>
	</table>

</body>
</html>