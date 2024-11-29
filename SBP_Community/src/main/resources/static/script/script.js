$(function(){
	
	// 회원가입 유효성 검사
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
				//location="/";
			}).fail(function(error){
				alert("에러 발생 : " + error);
			});			
			
			
		}
	});
	
});


