package com.covid.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid.model.City;
import com.covid.model.District;
import com.covid.model.State;
import com.covid.service.CovidCityService;
import com.covid.service.CovidDistrictService;
import com.covid.service.CovidStateService;

@Controller("CovidUserControllerImpl")
public class CovidUserControllerImpl
		implements CovidUserCityController, CovidUserDistictController, CovidUserStateController {

//	<--------------------------------------------STATE RELATED METHOD---------------------------------------------------->

	@Autowired
	private CovidStateService covidStateService;

	@RequestMapping("getAllStateCasesForUser")
	public ModelAndView getAllStateCasesForUser() {
		List<State> states = covidStateService.getAllStateCases();
		ModelAndView view = new ModelAndView("User/JSTLStatesResultForUser");
		view.addObject("states", states);
		return view;
	}

	@RequestMapping("searchStateByNameForUser")
	public ModelAndView searchStateByNameForUser(@RequestParam("code") String id) {
		State state = covidStateService.searchStateByName(id);
		ModelAndView view = new ModelAndView("User/SearchedStateResultForUser");
		view.addObject("stateObj", state);
		return view;
	}

	@RequestMapping("searchStateForUser")
	public ModelAndView searchStateByName(@RequestParam("code") String id) {
		State state = covidStateService.searchStateByName(id);
		ModelAndView view = new ModelAndView("User/SearchedStateResultForUser");
		view.addObject("stateObj", state);
		return view;
	}

	@RequestMapping("paginationOfState")
	public ModelAndView paginationOfState(@RequestParam("startPage") int startPage,
			@RequestParam("itemPerPage") int itemPerPage) {
		int availableStates = covidStateService.getAllStateCases().size();
		int pageNumber = (int) Math.ceil(availableStates / itemPerPage);
		List<State> states = covidStateService.paginationOfState(startPage, itemPerPage);
		ModelAndView view = new ModelAndView("User/JSTLStatesResultForUser");
		view.addObject("pageNumber", pageNumber);
		view.addObject("states", states);
		return view;
	}

//	<--------------------------------------------DISTRICT RELATED METHOD---------------------------------------------------->

	@Autowired
	private CovidDistrictService covidDistrictService;

	@RequestMapping("getAllDistrictCasesForUser")
	public ModelAndView getAllDistrictCasesForUser() {
		List<District> districts = covidDistrictService.getAllDistrictCases();
		ModelAndView view = new ModelAndView("User/JSTLDistrictResultForUser");
		view.addObject("districts", districts);
		return view;
	}

	@RequestMapping("searchDistrictForUser")
	public ModelAndView searchDistrictByNameForUser(@RequestParam("code") String id) {
		District district = covidDistrictService.searchDistrictByName(id);
		ModelAndView view = new ModelAndView("User/SearchedDistrictResultForUser");
		view.addObject("districtObj", district);
		return view;
	}

	@RequestMapping("getAllDistrictByStateIdForUser")
	public ModelAndView getAllDistrictByStateIdForUser(@RequestParam("stateid_fk") String stateId, int startPage,
			int itemPerPage) {
		int availableCities = covidDistrictService.getAllDistrictCasesForUser().size();
		int pageNumber = (int) Math.ceil(availableCities / itemPerPage);
		List<District> districts = covidDistrictService.getAllDistrictByStateId(stateId, startPage, itemPerPage);
		ModelAndView view = new ModelAndView("User/JSTLDistrictResultForUser");
		view.addObject("pageNumber", pageNumber);
		view.addObject("districts", districts);
		return view;
	}

	@RequestMapping("paginationOfDistrict")
	public ModelAndView paginationOfDistrict(@RequestParam("startPage") int startPage,
			@RequestParam("itemPerPage") int itemPerPage) {
		int availableDistricts = covidDistrictService.getAllDistrictCasesForUser().size();
		int pageNumber = (int) Math.ceil(availableDistricts / itemPerPage);
		List<District> districts = covidDistrictService.paginationOfDistrict(startPage, itemPerPage);
		ModelAndView view = new ModelAndView("User/JSTLDistrictResultForUser");
		view.addObject("pageNumber", pageNumber);
		view.addObject("districts", districts);
		return view;
	}
//	<--------------------------------------------CITY RELATED METHOD---------------------------------------------------->

	@Autowired
	private CovidCityService covidCityService;

	@RequestMapping("getAllCityCasesForUser")
	public ModelAndView getAllCityCasesForUser() {
		List<City> cities = covidCityService.getAllCases();
		ModelAndView view = new ModelAndView("User/JSTLCityResultForUser");
		view.addObject("cities", cities);
		return view;
	}

	@RequestMapping("getAllCityByDistrictIdForUser")
	public ModelAndView getAllCityByDistrictIdForUser(@RequestParam("districtid_fk") String districtId, int startPage,
			int itemPerPage) {
		int availableCities = covidCityService.getAllCityCasesForUser().size();
		int pageNumber = (int) Math.ceil(availableCities / itemPerPage);
		List<City> cities = covidCityService.getAllCityByDistrictId(districtId, startPage, itemPerPage);
		ModelAndView view = new ModelAndView("User/JSTLCityResultForUser");
		view.addObject("pageNumber", pageNumber);
		view.addObject("cities", cities);
		return view;
	}

	@RequestMapping("getAllCityByStateIdForUser")
	public ModelAndView getAllCityByStateIdForUser(@RequestParam("stateid_fk") String stateId, int startPage,
			int itemPerPage) {
		int availableCities = covidCityService.getAllCityCasesForUser().size();
		int pageNumber = (int) Math.ceil(availableCities / itemPerPage);
		List<City> cities = covidCityService.getAllCityByStateId(stateId, startPage, itemPerPage);
		ModelAndView view = new ModelAndView("User/JSTLCityResultForUser");
		view.addObject("pageNumber", pageNumber);
		view.addObject("cities", cities);
		return view;
	}

	@RequestMapping("paginationOfCity")
	public ModelAndView paginationOfCity(@RequestParam("startPage") int startPage,
			@RequestParam("itemPerPage") int itemPerPage) {
		int availableCities = covidCityService.getAllCityCasesForUser().size();
		int pageNumber = (int) Math.ceil(availableCities / itemPerPage);
		List<City> cities = covidCityService.paginationOfCity(startPage, itemPerPage);
		ModelAndView view = new ModelAndView("User/JSTLCityResultForUser");
		view.addObject("pageNumber", pageNumber);
		view.addObject("cities", cities);
		return view;
	}

}