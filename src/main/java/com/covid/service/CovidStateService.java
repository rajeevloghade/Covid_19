package com.covid.service;

import java.util.List;

import com.covid.model.State;

public interface CovidStateService {

	int getAllCountStateCases();

	List<State> getAllStateCases();

	State saveStateCase(State state);

	State updateStateCase(State state);

	State deleteStateById(String id);

	State searchStateByName(String id);

	List<State> paginationOfState(int startPage, int itemPerPage);

}
