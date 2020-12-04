package com.covid.service;

import java.util.List;

import com.covid.model.City;

public interface CovidCityService {

	List<City> getAllCases();

	City saveCityCase(City city);

	City updateCityCase(City city);

	void deleteCityById(String id);

	City searchCityByName(String id);

	Object getTotalCasesOfCity(String id);

	List<City> getAllCityByStateId(String stateId, int startPage, int itemPerPage);

	List<City> getAllCityByDistrictId(String districtId, int startPage, int itemPerPage);

	List<City> getAllCityCasesForUser();

	List<City> paginationOfCity(int pageNumber, int itemPerPage);

}
