package com.example.demo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.demo.models.Posts;
import com.example.demo.repositories.PostRepository;

@Service
public class PostService {
	@Autowired
	private PostRepository repo;
	
	public Posts findById(Long id) {
		Optional<Posts> result = repo.findById(id);
		if (result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	
	public List<Posts> all(){
		return repo.findAll();
	}
	
	public Posts update(Posts post) {
		return repo.save(post);
	}
	
	public Posts create(Posts post) {
		return repo.save(post);
	}
	
	public void delete(Posts post) {
		repo.delete(post);
	}
	
	public Posts create(Posts p, BindingResult result) {
		if(p.getCaption().isBlank())
			result.rejectValue("caption", "Empty", " ");
		return repo.save(p);
		
	}
}
