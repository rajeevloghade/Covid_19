package com.covid.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import com.covid.model.City;

public interface CovidCityController {

	ModelAndView verifyAdmin(String name, String email, String password, HttpServletRequest request);

	String getAdminLoginPage();

	ModelAndView getAdminDashboardPage(HttpServletRequest request);

	ModelAndView saveCase(City city, BindingResult result);

	ModelAndView deleteCityById(String id);

	ModelAndView updateCase(City city);

	ModelAndView searchCityByName(String id);

	ModelAndView getAllCases(HttpServletRequest request);

	ModelAndView getAllCityByDistrictId(String districtId, int startPage, int itemPerPage);

	ModelAndView getAllCityByStateId(String stateId, int startPage, int itemPerPage);

}
