package com.covid.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid.dao.CovidDistrictDao;
import com.covid.model.District;
import com.covid.model.State;
import com.covid.service.CovidDistrictService;

@Service
public class CovidDistrictServiceImpl implements CovidDistrictService {

	@Autowired
	private CovidDistrictDao covidDistrictDao;

	public District deleteDistrictById(String id) {
		return covidDistrictDao.deleteDistrictById(id);
	}

	public List<District> getAllDistrictCases() {
		return covidDistrictDao.getAllDistrictCases();
	}

	public District searchDistrictByName(String id) {
		return covidDistrictDao.searchDistrictByName(id);
	}

	public District updateDistrictCase(District district) {
		District districtUpdate = covidDistrictDao.searchDistrictByName(district.getCode());
		districtUpdate.setDistrictName(district.getDistrictName());
		districtUpdate.setTotalCase(district.getTotalActiveCase() + district.getRecovery() + district.getDeath());
		districtUpdate.setTotalActiveCase(district.getTotalActiveCase());
		districtUpdate.setRecovery(district.getRecovery());
		districtUpdate.setDeath(district.getDeath());
		return covidDistrictDao.updateDistrictCase(districtUpdate);
	}

	public District saveDistrictCase(District district) {
		District districtInsert = new District();
		districtInsert.setCode(district.getCode());
		districtInsert.setDistrictName(district.getDistrictName());
		districtInsert.setState(new State(district.getStateFk()));
		districtInsert.setTotalCase(district.getTotalActiveCase() + district.getRecovery() + district.getDeath());
		districtInsert.setTotalActiveCase(district.getTotalActiveCase());
		districtInsert.setRecovery(district.getRecovery());
		districtInsert.setDeath(district.getDeath());
		return covidDistrictDao.saveDistrictCase(districtInsert);
	}

	public List<District> getAllDistrictByStateId(String stateId, int startPage, int itemPerPage) {
		return covidDistrictDao.getAllDistrictByStateId(stateId, startPage, itemPerPage);
	}

	public List<District> getAllDistrictCasesForUser() {
		return covidDistrictDao.getAllDistrictCasesForUser();
	}

	public List<District> paginationOfDistrict(int startPage, int itemPerPage) {
		return covidDistrictDao.paginationOfDistrict(startPage, itemPerPage);
	}
}
