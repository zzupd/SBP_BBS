package com.drill.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drill.domain.Post;
import com.drill.domain.repo.PostRepository;



@Service
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	@Transactional
	public void write(Post post) {
		postRepository.save(post);
	}
	
	@Transactional(readOnly=true)
	public List<Post> getList() {
		return postRepository.findAll();
	}

}










