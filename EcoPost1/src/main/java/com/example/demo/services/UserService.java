package com.example.demo.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.demo.models.LoginUser;
import com.example.demo.models.User;
import com.example.demo.repositories.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository repo;
	
	public User findById(Long id) {
		Optional<User> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	
	public User findByEmail(String email) {
		Optional<User> result = repo.findByEmail(email);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}
	
	public User login(LoginUser newLogin, BindingResult result) {
		Optional<User> optionalUser = repo.findByEmail(newLogin.getEmail());
		if(!optionalUser.isPresent()) {
			result.rejectValue("email", "missing", "No account found.");
			return null;
		}
		User user = optionalUser.get();
		if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
    	    result.rejectValue("password", "noMatch", "Invalid Password!");
    	}
		
		if(result.hasErrors()) {
			return null;
		}
		
		return user;
	}
	
	public User register(User newUser, BindingResult result) {
		Optional<User> optionalUser = repo.findByEmail(newUser.getEmail());
		if (optionalUser.isPresent()) {
			result.rejectValue("email", "exists", "Account with this email already exists.");
		}
		
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "matches", "Confirm Password must match Password!");
		}
		
		if(result.hasErrors()) {
			return null;
		}
		
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
    	newUser.setPassword(hashed);
    	
    	newUser = repo.save(newUser);
    	System.out.println("New user created with ID: " + newUser.getId());
    	
        return newUser;
	}
}
