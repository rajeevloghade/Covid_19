package com.covid.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid.dao.CovidDistrictDao;
import com.covid.model.District;
import com.covid.model.State;

@Repository("CovidDistrictDaoImpl")
public class CovidDistrictDaoImpl implements CovidDistrictDao {

	@Autowired
	private SessionFactory sessionFactory;

	public District deleteDistrictById(String id) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		District district = session.get(District.class, id);
		session.delete(district);
		beginTransaction.commit();
		return district;
	}

	public List<District> getAllDistrictCases() {
		Session session = sessionFactory.openSession();
		List<District> districts = session.createCriteria(District.class).addOrder(Order.asc("districtName")).list();
		session.close();
		return districts;
	}

	public District searchDistrictByName(String id) {
		Session session = sessionFactory.openSession();
		District district = session.get(District.class, id);
		session.close();
		return district;
	}

	public District updateDistrictCase(District district) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		session.update(district);
		beginTransaction.commit();
		session.close();
		return district;
	}

	public District saveDistrictCase(District district) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		session.save(district);
		beginTransaction.commit();
		session.close();
		return district;
	}

	public List<District> getAllDistrictByStateId(String stateId, int startPage, int itemPerPage) {
		Session session = sessionFactory.openSession();
		Criterion eqProperty = Restrictions.eq("state", new State(stateId));
		Criteria createCriteria = session.createCriteria(District.class);
		createCriteria.add(eqProperty);
		createCriteria.setFirstResult(startPage);
		createCriteria.setMaxResults(itemPerPage);
		List<District> districts = createCriteria.addOrder(Order.asc("districtName")).list();
		session.close();
		return districts;
	}

	public List<District> getAllDistrictCasesForUser() {
		Session session = sessionFactory.openSession();
		List<District> districts = session.createCriteria(District.class).addOrder(Order.asc("districtName")).list();
		session.close();
		return districts;
	}

	public List<District> paginationOfDistrict(int startPage, int itemPerPage) {
		Session session = sessionFactory.openSession();
		Query hqlQuery = session.createQuery("from District");
		hqlQuery.setFirstResult(startPage);// setting limit from
		hqlQuery.setMaxResults(itemPerPage);// items per page
		List<District> districts = hqlQuery.list();
		session.close();
		return districts;
	}

}
