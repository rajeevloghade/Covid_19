package com.covid.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid.dao.CovidCityDao;
import com.covid.model.City;
import com.covid.model.District;
import com.covid.model.State;

@Repository("CovidCityDaoImpl")
public class CovidCityDaoImpl implements CovidCityDao {

	@Autowired
	private SessionFactory sessionFactory;

	public City saveCase(City city) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		session.save(city);
		beginTransaction.commit();
		session.close();
		return city;
	}

	public City deleteCityById(String id) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		City city = session.get(City.class, id);
		session.delete(city);
		beginTransaction.commit();
		session.close();
		return city;
	}

	public List<City> getAllCases() {
		Session session = sessionFactory.openSession();
		List<City> cities = session.createCriteria(City.class).addOrder(Order.desc("totalActiveCase")).list();
		session.close();
		return cities;
	}

	public City searchCityByName(String id) {
		Session session = sessionFactory.openSession();
		City city = session.get(City.class, id);
		session.close();
		return city;
	}

	public City updateCase(City city) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		session.update(city);
		beginTransaction.commit();
		session.close();
		return city;
	}

	public List<Object[]> getTotalCasesOfCity(String stateid_fk) {
		Session session = sessionFactory.openSession();
		Criteria createCriteria = session.createCriteria(City.class);
		Criterion eq = Restrictions.eq("state", new State(stateid_fk));

		Projection sumOfTotalCase = Projections.sum("totalCase");
		Projection sumOfTotalActiveCase = Projections.sum("totalActiveCase");
		Projection sumOfRecovery = Projections.sum("recovery");
		Projection sumOfDeath = Projections.sum("death");

		Projection groupProperty = Projections.groupProperty("state");

		ProjectionList projectionList = Projections.projectionList();
		projectionList.add(sumOfDeath);
		projectionList.add(sumOfTotalCase);
		projectionList.add(sumOfTotalActiveCase);
		projectionList.add(sumOfRecovery);
		projectionList.add(groupProperty);
		createCriteria.add(eq);
		createCriteria.setProjection(projectionList);

		List<Object[]> list = createCriteria.list();
		return list;
	}

	public List<City> getAllCityByStateId(String stateId,int startPage, int itemPerPage) {
		Session session = sessionFactory.openSession();
		Criterion eqProperty = Restrictions.eq("state", new State(stateId));
		Criteria createCriteria = session.createCriteria(City.class);
		createCriteria.add(eqProperty);
		createCriteria.setFirstResult(startPage);
		createCriteria.setMaxResults(itemPerPage);
		List<City> cities = createCriteria.addOrder(Order.desc("totalActiveCase")).list();
		session.close();
		return cities;
	}

	public List<City> getAllCityByDistrictId(String districtId,int startPage, int itemPerPage) {
		Session session = sessionFactory.openSession();
		Criterion eqProperty = Restrictions.eq("district", new District(districtId));
		Criteria createCriteria = session.createCriteria(City.class);
		createCriteria.add(eqProperty);
		List<City> cities = createCriteria.addOrder(Order.desc("totalActiveCase")).list();
		session.close();
		return cities;
	}

	public List<City> getAllCityCasesForUser() {
		Session session = sessionFactory.openSession();
		List<City> cities = session.createCriteria(City.class).addOrder(Order.desc("totalActiveCase")).list();
		session.close();
		return cities;
	}

	public List<City> paginationOfCity(int startPage, int itemPerPage) {
		Session session = sessionFactory.openSession();
		Query hqlQuery = session.createQuery("from City");
		hqlQuery.setFirstResult(startPage);// setting limit from
		hqlQuery.setMaxResults(itemPerPage);// items per page
		List<City> cities = hqlQuery.list();
		session.close();
		return cities;
	}
}
