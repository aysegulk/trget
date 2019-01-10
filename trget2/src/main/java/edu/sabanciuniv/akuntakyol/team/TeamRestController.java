package edu.sabanciuniv.akuntakyol.team;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@org.springframework.web.bind.annotation.RestController
public class TeamRestController {
	
	@Autowired
	private TeamService teamService;
	
	
	@GetMapping("/saveteam")
	public String saveTeam(@RequestParam String teamName) {
		
		Team team = new Team(teamName);
		teamService.saveMyTeam(team);
		return "Team Saved";
	}

}
