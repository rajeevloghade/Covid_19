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
@Table(name = "City")
public class City {

	@Id
	@Column(name = "cityid_pk")
	@Size(min = 2, message = " Code can't be less than two characters!")
	private String code;
	@Size(min = 3, message = " City can't be less than three characters!")
	private String cityName;

	@Transient // not create this column in table
	@Size(min = 2, message = " State Code can't be less than two characters!")
	private String stateFk;

	@Transient // not create this column in table
	@Size(min = 2, message = " District Code can't be less than two characters!")
	private String districtFk;

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

	@ManyToOne
	@JoinColumn(name = "districtid_fk")
	private District district;

	public City() {
		super();
	}

	public City(String code, String cityName, int totalCase, int totalActiveCase, int recovery, int death, State state,
			District district, String stateFk) {
		super();
		this.code = code;
		this.cityName = cityName;
		this.totalCase = totalCase;
		this.totalActiveCase = totalActiveCase;
		this.recovery = recovery;
		this.death = death;
		this.stateFk = stateFk;
//		this.state = state;
//		this.district = district;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
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

	public District getDistrict() {
		return district;
	}

	public void setDistrict(District district) {
		this.district = district;
	}

	public String getStateFk() {
		return stateFk;
	}

	public String getDistrictFk() {
		return districtFk;
	}

	public void setDistrictFk(String districtFk) {
		this.districtFk = districtFk;
	}

	public void setStateFk(String stateFk) {
		this.stateFk = stateFk;
	}

	@Override
	public String toString() {
		return "City [code=" + code + ", cityName=" + cityName + ", stateFk=" + stateFk + ", districtFk=" + districtFk
				+ ", totalCase=" + totalCase + ", totalActiveCase=" + totalActiveCase + ", recovery=" + recovery
				+ ", death=" + death + ", state=" + state + "]";
	}

}
