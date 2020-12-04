package com.covid.controller.user;

import org.springframework.web.servlet.ModelAndView;

public interface CovidUserCityController {

	ModelAndView getAllCityCasesForUser();

	ModelAndView getAllCityByDistrictIdForUser(String districtId,int startPage, int itemPerPage);

	ModelAndView getAllCityByStateIdForUser(String stateId,int startPage, int itemPerPage);

	ModelAndView paginationOfCity(int startPage, int itemPerPage);

}
