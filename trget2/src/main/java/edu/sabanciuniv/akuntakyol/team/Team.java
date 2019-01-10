package edu.sabanciuniv.akuntakyol.team;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;




@Entity
@Table(name="teamtable")
public class Team {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int teamId;
	
	private String teamName;


	
	public Team() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Team(String teamName) {
		super();
	
		this.teamName = teamName;
	
	}
	public int getId() {
		return teamId;
	}
	public void setId(int id) {
		this.teamId = id;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamNameString(String teamNameString) {
		this.teamName = teamNameString;
	}
	@Override
	public String toString() {
		return "Team [teamId=" + teamId + ", teamName=" + teamName + "]";
	}


	
	
	
	
}
