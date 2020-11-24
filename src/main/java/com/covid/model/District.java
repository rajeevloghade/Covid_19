package com.covid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity
@Data
@Table(name = "District")
public class District {

	@Id
	@Column(name = "districtid_pk")
	@Size(min = 2, message = " Code can't be less than two characters!")
	private String code;
	@Size(min = 3, message = " District can't be less than three characters!")
	private String districtName;

	@Transient // not create this column in table
	@Size(min = 2, message = " State Code can't be less than two characters!")
	private String stateFk;

	private int totalCase;
	@Min(value = 0, message = " Total Active Case must be greater than or equal to 0.")
	private int totalActiveCase;
	@Min(value = 0, message = " Recovery must be greater than or equal to 0.")
	private int recovery;
	@Min(value = 0, message = " Death must be greater than or equal to 0.")
	private int death;

	@ManyToOne
	@JoinColumn(name = "stateid_fk")
	private State state;

	public District() {
		super();
	}

	public District(String code) {
		super();
		this.code = code;
	}

	public District(String code, String districtName, int totalCase, int totalActiveCase, int recovery, int death,
			State state) {
		super();
		this.code = code;
		this.districtName = districtName;
		this.totalCase = totalCase;
		this.totalActiveCase = totalActiveCase;
		this.recovery = recovery;
		this.death = death;
//		this.state = state;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
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

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public String getStateFk() {
		return stateFk;
	}

	public void setStateFk(String stateFk) {
		this.stateFk = stateFk;
	}

	@Override
	public String toString() {
		return "District [code=" + code + ", districtName=" + districtName + ", stateFk=" + stateFk + ", totalCase="
				+ totalCase + ", totalActiveCase=" + totalActiveCase + ", recovery=" + recovery + ", death=" + death
				+ ", state=" + state + "]";
	}

}
