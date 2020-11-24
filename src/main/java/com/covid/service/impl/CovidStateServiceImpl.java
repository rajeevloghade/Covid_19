package com.covid.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid.dao.CovidStateDao;
import com.covid.model.State;
import com.covid.service.CovidStateService;

@Service
public class CovidStateServiceImpl implements CovidStateService {

	@Autowired
	private CovidStateDao covidStateDao;

	public List<State> getAllStateCases() {
		return covidStateDao.getAllCases();
	}

	public int getAllCountStateCases() {
		return covidStateDao.getAllCases().size();
	}

	public State saveStateCase(State state) {
		State stateInsert = new State();
		stateInsert.setCode(state.getCode());
		stateInsert.setStateName(state.getStateName());
		stateInsert.setTotalCase(state.getTotalActiveCase() + state.getRecovery() + state.getDeath());
		stateInsert.setTotalActiveCase(state.getTotalActiveCase());
		stateInsert.setRecovery(state.getRecovery());
		stateInsert.setDeath(state.getDeath());
		return covidStateDao.saveStateCase(stateInsert);
	}

	public State updateStateCase(State state) {
		State stateUpdate = covidStateDao.searchStateByName(state.getCode());
		stateUpdate.setStateName(state.getStateName());
		stateUpdate.setDeath(state.getDeath());
		stateUpdate.setRecovery(state.getRecovery());
		stateUpdate.setTotalActiveCase(state.getTotalActiveCase());
		stateUpdate.setTotalCase(state.getTotalActiveCase() + state.getRecovery() + state.getDeath());
		return covidStateDao.updateStateCase(stateUpdate);
	}

	public State deleteStateById(String id) {
		return covidStateDao.deleteStateById(id);
	}

	public State searchStateByName(String id) {
		return covidStateDao.searchStateByName(id);
	}

	public List<State> paginationOfState(int startPage, int itemPerPage) {
		return covidStateDao.paginationOfState(startPage, itemPerPage);
	}

}
