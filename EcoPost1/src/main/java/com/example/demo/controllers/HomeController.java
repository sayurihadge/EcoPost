package com.example.demo.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.models.LoginUser;
import com.example.demo.models.Posts;
import com.example.demo.models.User;
import com.example.demo.services.PostService;
import com.example.demo.services.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/")
	public String home() {
		return "Home.jsp";
	}
	
	// Start of Login and registration page
	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("newLogin", new LoginUser());
		return "Login.jsp";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userService.login(newLogin, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "Login.jsp";
		}
		
		session.setAttribute("id", user.getId());
		return "redirect:/feed";
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("newUser", new User());
		return "Registration.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        
    	User user = userService.register(newUser, result);
    	
        
        if(result.hasErrors()) {

            model.addAttribute("newLogin", new LoginUser());
            return "Registration.jsp";
        }

        session.setAttribute("id", user.getId());
    
        return "redirect:/feed";
    }
	//End of login and registration page
	
	//Start of Feed page
	@GetMapping("/feed")
	public String feed (Model model, HttpSession session) {
		if(session.getAttribute("id") != null) {
			Long attribute = (Long) session.getAttribute("id");
			User user = userService.findById(attribute);
			model.addAttribute("user", user);
			model.addAttribute("post", postService.all());
			return "Feed.jsp";
		}
		if (session.getAttribute("id") == null){
			return "redirect:/";
		}
		else {
			return "redirect:/";
		}
	}
	
	//Start of create new post
	@GetMapping("/profile")
	public String newPost(@ModelAttribute("post") Posts post, Model model, HttpSession session) {
		Long attribute = (Long) session.getAttribute("id");
		User user = userService.findById(attribute);
		model.addAttribute("user", user);
		return "Profile.jsp";
	}
	
	@PostMapping("/profile")
	public String newPostDisp(@Valid @ModelAttribute("post") Posts post, BindingResult result, HttpSession session, Model model) {
		Posts somePost = postService.create(post);
		if(result.hasErrors()) {
			return "Profile.jsp";
		}
		Long attribute = (Long) session.getAttribute("id");
		User user = userService.findById(attribute);

	    post.setUser(user);
		postService.create(post);
		return "redirect:/profile";
	}
	//End of create new post
	
	//Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/login";
    }
    //Logout
		
	
}
