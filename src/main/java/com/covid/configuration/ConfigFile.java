package com.covid.configuration;

import java.beans.PropertyVetoException;
import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

//This class will be the configuration-class where we'll configure our java beans and 
//This is going to replace the DispatcherServlet
@Configuration
@ComponentScan(basePackages = "com.covid")
@EnableWebMvc
public class ConfigFile {

	// Here we will create and configure the beans
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Bean // Bean for DataSource
	public ComboPooledDataSource comboPooledDataSource() {
		ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();
		try {
			comboPooledDataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
			comboPooledDataSource.setJdbcUrl("jdbc:mysql://localhost:3306/covid_database");
			comboPooledDataSource.setUser("root");
			comboPooledDataSource.setPassword("root");
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		}
		return comboPooledDataSource;
	}

	@Bean // Bean for SessionFactory
	public LocalSessionFactoryBean localSessionFactoryBean() {
		LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
		localSessionFactoryBean.setDataSource(comboPooledDataSource());
		localSessionFactoryBean.setPackagesToScan("com.covid");

		// setting Hibernate properties
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");

		localSessionFactoryBean.setHibernateProperties(hibernateProperties);
		return localSessionFactoryBean;
	}

}
