package edu.sabanciuniv.akuntakyol.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.web.bind.annotation.RestController
public class UserRestController {

	@Autowired
	private UserService userService;
	
	
	@GetMapping("/")
	public String hello() {
		return "this is Home Page";

	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username,
			@RequestParam String name,@RequestParam String surname,
			@RequestParam String email,@RequestParam String password) {
		
		User user = new User(username, name, surname, email, password);
		userService.saveMyUser(user);
		return "User Saved";
	}
}
