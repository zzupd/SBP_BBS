$(function(){
	
	// 회원가입 및 유효성 검사
	$("button#joinBtn").click(function(){
		let uidVal = $("#userid").val().trim();
		let pwdVal = $("#password").val().trim();
		let emailVal = $("#email").val().trim();
		
		if (uidVal == "" || pwdVal == "" || emailVal == "") {
			alert("가입 정보를 모두 입력하세요.");
			$("#userid").focus();
			return false;
		} else {
			let user = {
				userid: uidVal,
				password: pwdVal,
				email: emailVal
			}
			// alert(user.userid);
			console.log(user);
			
			$.ajax({
				type: "POST",
				url: "/join",
				data: JSON.stringify(user),
				contentType: "application/json; charset=utf-8"
			}).done(function(response){
				console.log(response);
				location="/";
			}).fail(function(error){
				alert("에러 발생 : " + error);
			});			
			
			
		}
	});
	
	
	// 로그인 시작
	$("button#loginBtn").click(function(){
		
		let uidVal = $("#userid").val().trim();
		let pwdVal = $("#password").val().trim();
		
		if (uidVal == "" || pwdVal == "") {
			alert("ID와 PW를 모두 입력하세요.");
			$("#userid").focus();
			return false;
		} else {
		
			let loginData = {
				userid: uidVal,
				password: pwdVal
			}	
			
			console.log(loginData);
			
			$.ajax({
				type: "POST",
				url: "/login",
				data: JSON.stringify(loginData),
				contentType: "application/json; charset=utf-8"
			}).done(function(response){
				// 올바른 입력과 잘못된 ID/PW 입력에 
				// 모두 적용됨
				// console.log("response : " + response);
				// alert("아이디와 비밀번호를 확인하세요.");
				location="/";
			}).fail(function(error){
				// AJAX 통신상의 오류를 의미함.
				alert("오류가 발생했습니다. error : " + error);
			});
			
		}
	});
	
	
	// 로그아웃
	$("#logoutLink").click(function(){
		let chk = confirm("로그아웃 하시겠습니까?");
		if (chk) {
			location.href="/logout";
		} else {
			alert("사용자가 취소하셨습니다.");
		}
	});
	
	
	// 글쓰기 저장 시작
	$("button#writeBtn").click(function(){
		let titleVal = $("#title").val().trim();
		let contentVal = $("#content").val();
		
		if (titleVal == "") {
			alert("글 제목을 입력하세요.");
			$("#title").focus();
		} else {
			let writeData = {
				title: titleVal,
				content: contentVal
			}
			console.log(writeData);
			
			$.ajax({
				type: "POST",
				url: "/write",
				data: JSON.stringify(writeData),
				contentType: "application/json; charset=utf-8"
				
			}).done(function(){
				location="/";
			}).fail(function(){
				alert("오류가 발생했습니다.");	
			});
			
			
		}
		
	});
	
});














