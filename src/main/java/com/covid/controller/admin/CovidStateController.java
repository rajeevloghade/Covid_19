package com.covid.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import com.covid.model.State;

public interface CovidStateController {

	ModelAndView saveStateCase(State city, BindingResult result);

	ModelAndView deleteStateById(String id);

	ModelAndView updateStateCase(State city);

	ModelAndView getAllStateCases(HttpServletRequest request);

	ModelAndView searchStateByName(String id);

}
