package com.covid.dao;

import java.util.List;

import com.covid.model.City;

public interface CovidCityDao {

	void deleteCityById(String id);

	List<City> getAllCases();
	
	City searchCityByName(String id);

	City updateCase(City city);

	City saveCase(City city);

	Object getTotalCasesOfCity(String id);

	List<City> getAllCityByStateId(String stateId,int startPage, int itemPerPage);

	List<City> getAllCityByDistrictId(String districtId,int startPage, int itemPerPage);

	List<City> getAllCityCasesForUser();

	List<City> paginationOfCity(int startPage, int itemPerPage);

}
