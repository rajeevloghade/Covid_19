package com.covid.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid.model.City;
import com.covid.model.District;
import com.covid.model.State;
import com.covid.service.CovidCityService;
import com.covid.service.CovidDistrictService;
import com.covid.service.CovidStateService;

@Controller("CovidAdminControllerImpl")
public class CovidAdminControllerImpl implements CovidCityController, CovidStateController, CovidDistictController {

//	<--------------------------------------------ADMIN RELATED METHOD---------------------------------------------------->

	@RequestMapping("adminLoginPage")
	public String getAdminLoginPage() {
		return "AdminLogin";
	}

	@RequestMapping("adminDashBoard")
	public String getAdminDashboardPage(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null) {
			return "AdminDashBoard";
		} else {
			return "AdminLogin";
		}
	}

	@RequestMapping("logout")
	public String logOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return "AdminLogin";
	}

	@RequestMapping("precaution")
	public String getPrecautionPage() {
		return "Precaution";
	}

	@RequestMapping("VerifyAdmin")
	public ModelAndView verifyAdmin(@RequestParam(name = "name") String name,
			@RequestParam(name = "email") String email, @RequestParam(name = "password") String password,
			HttpServletRequest request) {

		if (email.equals("Admin123@gmail.com") && password.equals("123456")) {
			// setting the email to session
			HttpSession session = request.getSession();
			session.setAttribute("AdminEmail", email);
			return new ModelAndView("AdminDashBoard");
		} else {
			return new ModelAndView("AdminLogin");
		}
	}

//	<--------------------------------------------STATE RELATED METHOD---------------------------------------------------->

	@Autowired
	private CovidStateService covidStateService;

	@RequestMapping("insertStatePage")
	public String getInsertStatePage(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null)
			return "NewStateData";
		else
			return "AdminLogin";
	}

	@RequestMapping("stateUpdate")
	public ModelAndView getstateUpdatePage(@RequestParam("code") String id, HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null) {
			State searchedState = covidStateService.searchStateByName(id);
			ModelAndView view = new ModelAndView("StateUpdate");
			view.addObject("searchedState", searchedState);
			return view;
		} else
			return new ModelAndView("AdminLogin");
	}

	@RequestMapping("getAllStateCases")
	public ModelAndView getAllStateCases(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null) {
			List<State> states = covidStateService.getAllStateCases();
			ModelAndView view = new ModelAndView("JSTLStatesResult");
			view.addObject("states", states);
			return view;
		} else
			return new ModelAndView("AdminLogin");
	}

	@RequestMapping("StateInsertion")
	public ModelAndView saveStateCase(@Valid @ModelAttribute("stateInserted") State state, BindingResult result) {
		// read the data coming from request by using @ModelAttribute

		// checking if there is an error in databinding
		if (result.hasErrors()) {
			ModelAndView view = new ModelAndView("NewStateData");
			return view;
		}
		covidStateService.saveStateCase(state);
		return new ModelAndView("redirect:getAllStateCases");
	}

	@RequestMapping("StateUpdation")
	public ModelAndView updateStateCase(@ModelAttribute("stateUpdated") State state) {
		covidStateService.updateStateCase(state);
		return new ModelAndView("redirect:getAllStateCases");
	}

	@RequestMapping("stateDelete")
	public ModelAndView deleteStateById(@RequestParam("code") String id) {
		// passing id to search for course
		State state = covidStateService.deleteStateById(id);

		// return the view name
		ModelAndView view = new ModelAndView("redirect:getAllStateCases");
		view.addObject("stateObj", state);
		return view;
	}

	@RequestMapping("searchState")
	public ModelAndView searchStateByName(@RequestParam("code") String id) {
		State state = covidStateService.searchStateByName(id);
		ModelAndView view = new ModelAndView("SearchedStateResult");
		view.addObject("stateObj", state);
		return view;
	}

//	<----------------------------------------DISTRICT RELATED METHOD------------------------------------------------>

	@Autowired
	private CovidDistrictService covidDistrictService;

	@RequestMapping("insertDistrictPage")
	public String getInsertDistrictPage(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null)
			return "NewDistrictData";
		else
			return "AdminLogin";
	}

	@RequestMapping("districtUpdate")
	public ModelAndView getdistrictUpdatePage(@RequestParam("code") String id) {
		District searchedDistrict = covidDistrictService.searchDistrictByName(id);
		ModelAndView view = new ModelAndView("DistrictUpdate");
		view.addObject("searchedDistrict", searchedDistrict);
		return view;
	}

	@RequestMapping("districtDelete")
	public ModelAndView deleteDistrictById(@RequestParam("code") String id) {
		// passing id to search for course
		District district = covidDistrictService.deleteDistrictById(id);

		// return the view name
		ModelAndView view = new ModelAndView("redirect:getAllDistrictCases");
		view.addObject("districtObj", district);
		return view;
	}

	@RequestMapping("DistrictUpdation")
	public ModelAndView updateDistrictCase(@ModelAttribute("districtUpdated") District district) {
		covidDistrictService.updateDistrictCase(district);
		return new ModelAndView("redirect:getAllDistrictCases");
	}

	@RequestMapping("getAllDistrictCases")
	public ModelAndView getAllDistrictCases(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null) {
			List<District> districts = covidDistrictService.getAllDistrictCases();
			ModelAndView view = new ModelAndView("JSTLDistrictResult");
			view.addObject("districts", districts);
			return view;
		} else
			return new ModelAndView("AdminLogin");
	}

	@RequestMapping("searchDistrict")
	public ModelAndView searchDistrictByName(@RequestParam("code") String id) {
		// read the data coming from request

		// passing name to search for course
		District district = covidDistrictService.searchDistrictByName(id);
//		List<Object[]> totalCasesOfCity= covidCityService.getTotalCasesOfCity(id);

		// return the view name
		ModelAndView view = new ModelAndView("SearchedDistrictResult");
		view.addObject("districtObj", district);
//		view.addObject("totalCasesOfCity", totalCasesOfCity);
		return view;
	}

	@RequestMapping("DistrictInsertion")
	public ModelAndView saveDistrictCase(@Valid @ModelAttribute("districtInserted") District district,
			BindingResult result) {

		// checking if there is an error in databinding
		if (result.hasErrors()) {
			ModelAndView view = new ModelAndView("NewDistrictData");
			return view;
		}
		covidDistrictService.saveDistrictCase(district);
		return new ModelAndView("redirect:getAllDistrictCases");
	}

	@RequestMapping("getAllDistrictByStateId")
	public ModelAndView getAllDistrictByStateId(@RequestParam("stateid_fk") String stateId,
			@RequestParam(name = "startPage", required = false, defaultValue = "0") int startPage,
			@RequestParam(name = "itemPerPage", required = false, defaultValue = "1000") int itemPerPage) {
		// read the data coming from request

		// passing name to search for course
		List<District> districts = covidDistrictService.getAllDistrictByStateId(stateId, startPage, itemPerPage);
//		List<Object[]> totalCasesOfCity= covidCityService.getTotalCasesOfCity(id);

		// return the view name
		ModelAndView view = new ModelAndView("JSTLDistrictResult");
		view.addObject("districts", districts);
//		view.addObject("totalCasesOfCity", totalCasesOfCity);
		return view;
	}

//	<--------------------------------------------CITY RELATED METHOD------------------------------------------------>

	@Autowired
	private CovidCityService covidCityService;

	@RequestMapping("insertCityPage")
	public String getInsertCityPage(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null)
			return "NewCityData";
		else
			return "AdminLogin";
	}

	@RequestMapping("cityUpdate")
	public ModelAndView getcityUpdatePage(@RequestParam("code") String id) {
		City searchedCity = covidCityService.searchCityByName(id);
		ModelAndView view = new ModelAndView("CityUpdate");
		view.addObject("searchedCity", searchedCity);
		return view;
	}

	@RequestMapping("getAllCases")
	public ModelAndView getAllCases(HttpServletRequest request) {
		String AdminEmail = (String) request.getSession().getAttribute("AdminEmail");
		if (AdminEmail != null) {
			List<City> cities = covidCityService.getAllCases();
			ModelAndView view = new ModelAndView("JSTLCasesResult");
			view.addObject("cities", cities);
			return view;
		} else
			return new ModelAndView("AdminLogin");
	}

	@RequestMapping("CityInsertion")
	public ModelAndView saveCase(@Valid @ModelAttribute("cityInserted") City city, BindingResult result) {
		// checking if there is an error in databinding
		if (result.hasErrors()) {
			ModelAndView view = new ModelAndView("NewCityData");
			return view;
		}
		covidCityService.saveCityCase(city);
		return new ModelAndView("redirect:getAllCases");
	}

	@RequestMapping("CityUpdation")
	public ModelAndView updateCase(@ModelAttribute("cityUpdated") City city) {
		covidCityService.updateCityCase(city);
		return new ModelAndView("redirect:getAllCases");
	}

	@RequestMapping("cityDelete")
	public ModelAndView deleteCityById(@RequestParam("code") String id) {
		// passing id to search for course
		covidCityService.deleteCityById(id);

		// return the view name
		ModelAndView view = new ModelAndView("redirect:getAllCases");
		return view;
	}

	@RequestMapping("searchCity")
	public ModelAndView searchCityByName(@RequestParam("code") String id) {
		// read the data coming from request

		// passing name to search for course
		City city = covidCityService.searchCityByName(id);

		// return the view name
		ModelAndView view = new ModelAndView("DeletedCityResult");
		view.addObject("cityObj", city);
		return view;
	}

	@RequestMapping("getAllCityByStateId")
	public ModelAndView getAllCityByStateId(@RequestParam("stateid_fk") String stateId,
			@RequestParam(name = "startPage", required = false, defaultValue = "0") int startPage,
			@RequestParam(name = "itemPerPage", required = false, defaultValue = "1000") int itemPerPage) {
		List<City> cities = covidCityService.getAllCityByStateId(stateId, startPage, itemPerPage);
		ModelAndView view = new ModelAndView("JSTLCasesResult");
		view.addObject("cities", cities);
		return view;
	}

	@RequestMapping("getAllCityByDistrictId")
	public ModelAndView getAllCityByDistrictId(@RequestParam("districtid_fk") String districtId,
			@RequestParam(name = "startPage", required = false, defaultValue = "0") int startPage,
			@RequestParam(name = "itemPerPage", required = false, defaultValue = "1000") int itemPerPage) {
		List<City> cities = covidCityService.getAllCityByDistrictId(districtId, startPage, itemPerPage);
		ModelAndView view = new ModelAndView("JSTLCasesResult");
		view.addObject("cities", cities);
		return view;
	}

}
