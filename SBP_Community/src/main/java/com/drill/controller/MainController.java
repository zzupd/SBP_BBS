package com.drill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.drill.domain.User;
import com.drill.dto.ResUserDto;
import com.drill.svc.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	// 메인 페이지(=인덱스 페이지)
	@GetMapping({"", "/"})
	public String getIndex() {
		return "index";
	}
	
	// 회원가입
	@GetMapping("/join")
	public String join() {
		return "user/join";
	}
	
	
	// 회원가입 실행
	@PostMapping("/join")
	@ResponseBody 
	public ResUserDto<?> postJoin(@RequestBody User user) {
		
		User findUser = userService.getUser(user.getUserid()); 
				
		
		if (findUser.getUserid() == null) {
			userService.join(user);
			return new ResUserDto<>(
					HttpStatus.OK.value(),
					user.getUserid()
					+ "회원가입 완료!" 
					);
			
		} else {
			return new ResUserDto<>(
					HttpStatus.BAD_REQUEST.value(), 
					user.getUserid() + "는 사용중인 아이디입니다."
					);
		}
		
	}
	
	
	
	
}
