package com.covid.dao;

import java.util.List;

import com.covid.model.State;

public interface CovidStateDao {

	State deleteStateById(String id);

	List<State> getAllCases();

	State searchStateByName(String id);

	State updateStateCase(State state);

	State saveStateCase(State state);

	List<State> paginationOfState(int startPage, int itemPerPage);

}
