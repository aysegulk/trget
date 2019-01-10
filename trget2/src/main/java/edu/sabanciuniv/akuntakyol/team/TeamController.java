package edu.sabanciuniv.akuntakyol.team;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.sabanciuniv.akuntakyol.user.User;

@Controller
public class TeamController {

	@Autowired
	private TeamService teamService;

	@RequestMapping("/team")
	public String team(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_TEAM");
		return "team";

	}

	@PostMapping("/save-team")
	public String createTeam(@ModelAttribute Team team, BindingResult bindingResult, HttpServletRequest request) {
		teamService.saveMyTeam(team);
		request.setAttribute("mode", "MODE_TEAM");
		/* Buraya bir mesaj gelse iyi olur-AKA */

		return "team";

	}

	@GetMapping("/allteams")
	public String showAllteams(HttpServletRequest request) {
		request.setAttribute("teams", teamService.showAllTeams());
		request.setAttribute("mode", "ALL_TEAMS");

		return "team";

	}

	@RequestMapping("/delete-team")
	public String deleteteam(@RequestParam int id, HttpServletRequest request) {
		teamService.deleteMyTeam(id);
		request.setAttribute("teams", teamService.showAllTeams());
		request.setAttribute("mode", "ALL_TEAMS");
		return "team";

	}

	@RequestMapping("/edit-team")
	public String editteam(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("team", teamService.editMyTeam(id));
		request.setAttribute("mode", "MODE_UPDATETEAM");
		return "team";
	}


	
	
}
