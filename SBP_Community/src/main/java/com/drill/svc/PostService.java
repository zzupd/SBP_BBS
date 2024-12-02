package com.drill.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	public Page<Post> getList(Pageable pageable) {
		return postRepository.findAll(pageable);
	}

}










