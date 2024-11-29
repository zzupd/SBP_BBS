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
	
	@Transactional
	public void join(User user) {
		user.setRole(UserRoleStatus.USER);
		userRepository.save(user);
	}
	
	
}






