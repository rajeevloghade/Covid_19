package com.covid.controller.user;

import org.springframework.web.servlet.ModelAndView;

public interface CovidUserDistictController {

	ModelAndView getAllDistrictCasesForUser();

	ModelAndView searchDistrictByNameForUser(String id);

	ModelAndView getAllDistrictByStateIdForUser(String stateId, int startPage, int itemPerPage);

	ModelAndView paginationOfDistrict(int startPage, int itemPerPage);

}
