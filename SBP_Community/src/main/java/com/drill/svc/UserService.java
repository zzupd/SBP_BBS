package com.drill.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.drill.domain.User;
import com.drill.domain.UserRoleStatus;
import com.drill.domain.repo.UserRepository;

import jakarta.transaction.Transactional;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;  
	// Bean 생성(= 스프링 컨테이너에 객체로 생성한다.)
	// @Component
	
	
	@Transactional
	public void join(User user) {
		user.setRole(UserRoleStatus.USER);
		userRepository.save(user);
	}
	
	
	@Transactional
	public User getUser(String userid) {
		
		User findUser = userRepository
						.findByUserid(userid)
						.orElseGet(()-> new User());
		return findUser;
		
	}
	
	
}






