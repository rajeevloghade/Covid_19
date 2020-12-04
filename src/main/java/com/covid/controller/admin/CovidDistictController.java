package com.covid.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import com.covid.model.District;

public interface CovidDistictController {

	ModelAndView saveDistrictCase(District city, BindingResult result);

	ModelAndView deleteDistrictById(String id);

	ModelAndView updateDistrictCase(District district);

	ModelAndView getAllDistrictCases(HttpServletRequest request);

	ModelAndView searchDistrictByName(String id);

	ModelAndView getAllDistrictByStateId(String stateId,int startPage, int itemPerPage);

}
