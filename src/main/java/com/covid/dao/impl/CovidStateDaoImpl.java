package com.covid.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid.dao.CovidStateDao;
import com.covid.model.State;

@Repository("CovidStateDaoImpl")
public class CovidStateDaoImpl implements CovidStateDao {

	@Autowired
	private SessionFactory sessionFactory;

	public State deleteStateById(String id) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		State state = session.get(State.class, id);
		session.delete(state);
		beginTransaction.commit();
		session.close();
		return state;
	}

	public State searchStateByName(String id) {
		Session session = sessionFactory.openSession();
		State state = session.get(State.class, id);
		session.close();
		return state;
	}

	public State updateStateCase(State state) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		session.update(state);
		beginTransaction.commit();
		session.close();
		return state;
	}

	public State saveStateCase(State state) {
		Session session = sessionFactory.openSession();
		Transaction beginTransaction = session.beginTransaction();
		session.save(state);
		beginTransaction.commit();
		session.close();
		return state;
	}

	public List<State> getAllCases() {
		Session session = sessionFactory.openSession();
		List<State> states = session.createCriteria(State.class).addOrder(Order.desc("totalActiveCase")).list();
		session.close();
		return states;
	}

	public List<State> paginationOfState(int startPage, int itemPerPage) {
		Session session = sessionFactory.openSession();
		Query hqlQuery = session.createQuery("from State");
		hqlQuery.setFirstResult(startPage);// setting limit from
		hqlQuery.setMaxResults(itemPerPage);// items per page
		List<State> states = hqlQuery.list();
		session.close();
		return states;
	}

}
