package com.covid.controller.user;

import org.springframework.web.servlet.ModelAndView;

public interface CovidUserStateController {

	ModelAndView getAllStateCasesForUser();

	ModelAndView searchStateByNameForUser(String id);

}
