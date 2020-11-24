package com.covid.service;

import java.util.List;

import com.covid.model.District;

public interface CovidDistrictService {

	District deleteDistrictById(String id);

	List<District> getAllDistrictCases();

	District searchDistrictByName(String id);

	District updateDistrictCase(District district);

	District saveDistrictCase(District district);

	List<District> getAllDistrictByStateId(String stateId, int startPage, int itemPerPage);

	List<District> getAllDistrictCasesForUser();

	List<District> paginationOfDistrict(int startPage, int itemPerPage);

}
