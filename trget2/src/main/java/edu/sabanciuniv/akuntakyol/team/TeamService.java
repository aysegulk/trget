package edu.sabanciuniv.akuntakyol.team;


import java.util.ArrayList;
import java.util.List;


import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class TeamService {
	
	
	private final TeamRepository teamRepository;
	
	
	public TeamService(TeamRepository teamRepository) {
		this.teamRepository=teamRepository;
	}
	
	public void saveMyTeam(Team team) {
	
	teamRepository.save(team);
	
	}
	
	public List<Team>showAllTeams(){
		List<Team>teams=new ArrayList<>();
		for(Team team: teamRepository.findAll()) {
			teams.add(team);
		}
		
		return teams;
	}

	
	public void deleteMyTeam(int id) {
		teamRepository.deleteById(id);
		
	}
	
public Team editMyTeam(int id) {
	return teamRepository.findById(id).orElse(null);
}

}