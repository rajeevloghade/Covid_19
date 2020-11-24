package com.covid.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid.dao.CovidCityDao;
import com.covid.model.City;
import com.covid.model.District;
import com.covid.model.State;
import com.covid.service.CovidCityService;

@Service("CovidCityServiceImpl")
public class CovidCityServiceImpl implements CovidCityService {

	@Autowired
	private CovidCityDao covidCityDao;

	public List<City> getAllCases() {
		return covidCityDao.getAllCases();
	}

	public City saveCityCase(City city) {
		City cityUpdate = new City();
		cityUpdate.setCode(city.getCode());
		cityUpdate.setCityName(city.getCityName());
		cityUpdate.setDeath(city.getDeath());
		cityUpdate.setState(new State(city.getStateFk()));
		cityUpdate.setDistrict(new District(city.getDistrictFk()));
		cityUpdate.setTotalActiveCase(city.getTotalActiveCase());
		cityUpdate.setTotalCase(city.getTotalActiveCase() + city.getRecovery() + city.getDeath());
		cityUpdate.setRecovery(city.getRecovery());
		return covidCityDao.saveCase(cityUpdate);
	}

	public void deleteCityById(String id) {
		 covidCityDao.deleteCityById(id);
	}

	public City searchCityByName(String id) {
		return covidCityDao.searchCityByName(id);
	}

	public List<Object[]> getTotalCasesOfCity(String id) {
		return covidCityDao.getTotalCasesOfCity(id);
	}

	public City updateCityCase(City city) {
		City searchedCity = covidCityDao.searchCityByName(city.getCode());
		searchedCity.setCityName(city.getCityName());
		searchedCity.setDeath(city.getDeath());
		searchedCity.setRecovery(city.getRecovery());
		searchedCity.setTotalActiveCase(city.getTotalActiveCase());
		searchedCity.setTotalCase(city.getTotalActiveCase() + city.getRecovery() + city.getDeath());
		return covidCityDao.updateCase(searchedCity);
	}

	public List<City> getAllCityByStateId(String stateId, int startPage, int itemPerPage) {
		return covidCityDao.getAllCityByStateId(stateId, startPage, itemPerPage);
	}

	public List<City> getAllCityByDistrictId(String districtId, int startPage, int itemPerPage) {
		return covidCityDao.getAllCityByDistrictId(districtId, startPage, itemPerPage);
	}

	public List<City> getAllCityCasesForUser() {
		return covidCityDao.getAllCityCasesForUser();
	}

	public List<City> paginationOfCity(int startPage, int itemPerPage) {
		return covidCityDao.paginationOfCity(startPage, itemPerPage);
	}

}
