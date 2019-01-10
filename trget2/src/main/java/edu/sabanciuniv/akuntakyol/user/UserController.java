package edu.sabanciuniv.akuntakyol.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/welcome")
	public String welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";

	}

	@RequestMapping("/about")
	public String about(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ABOUT");
		return "welcome";

	}

	@RequestMapping("/register")
	public String registeration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcome";

	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		/* Buraya bir mesaj gelse iyi olur-AKA */

		return "welcome";

	}


	@GetMapping("/allusers")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");

		return "usersettings";

	}

	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "usersettings";

	}

	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "usersettings";
	}


	@RequestMapping("/update-user")
	public String updateUser(@RequestParam User user, HttpServletRequest request) {
		User loggedUser=user;
		request.setAttribute("user", userService.editMyUser(loggedUser.getId()));
		request.setAttribute("mode", "MODE_UPDATE");
		return "usersettings";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcome";
	}

	@RequestMapping("/login-user")
	public String login(@ModelAttribute User user, HttpServletRequest request) {
		if (userService.loginUser(user.getUsername(), user.getPassword())!= null) {
			
			return "home";
		} else {
			request.setAttribute("error","Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcome";
		}

	}

}
