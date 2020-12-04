package com.covid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity
@Data
@Table(name = "State")
public class State {

	@Id
	@Column(name = "stateid_pk")
	@Size(min = 2, message = " Code can't be less than two characters!")
	private String code;
	@Size(min = 3, message = " State can't be less than three characters!")
	private String stateName;

	private int totalCase;
	@Min(value = 0, message = " Total Active Case must be greater than or equal to 0.")
	private int totalActiveCase;
	@Min(value = 0, message = " Recovery must be greater than or equal to 0.")
	private int recovery;
	@Min(value = 0, message = " Death must be greater than or equal to 0.")
	private int death;

	public State() {
		super();
	}

	public State(String code) {
		super();
		this.code = code;
	}

	public State(String code, String stateName, int totalCase, int totalActiveCase, int recovery, int death) {
		super();
		this.code = code;
		this.stateName = stateName;
		this.totalCase = totalCase;
		this.totalActiveCase = totalActiveCase;
		this.recovery = recovery;
		this.death = death;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public int getTotalCase() {
		return totalCase;
	}

	public void setTotalCase(int totalCase) {
		this.totalCase = totalCase;
	}

	public int getTotalActiveCase() {
		return totalActiveCase;
	}

	public void setTotalActiveCase(int totalActiveCase) {
		this.totalActiveCase = totalActiveCase;
	}

	public int getRecovery() {
		return recovery;
	}

	public void setRecovery(int recovery) {
		this.recovery = recovery;
	}

	public int getDeath() {
		return death;
	}

	public void setDeath(int death) {
		this.death = death;
	}

	@Override
	public String toString() {
		return "State [code=" + code + ", stateName=" + stateName + ", totalCase=" + totalCase + ", totalActiveCase="
				+ totalActiveCase + ", recovery=" + recovery + ", death=" + death + "]";
	}

}
