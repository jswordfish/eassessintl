package com.assessment.services.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.sql.DataSource;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.common.AssessmentGenericException;
import com.assessment.data.Company;
import com.assessment.data.User;
import com.assessment.repositories.UserRepository;
import com.assessment.services.CompanyService;
import com.assessment.services.UserService;
import com.assessment.data.UserType;
@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	CompanyService companyService;
	
	@Autowired
	DataSource dataSource;
	
	
	
	ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	Validator validator = factory.getValidator();
	
	Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private void validateMandatoryFields(User user) {
		Set<ConstraintViolation<User>> violations = validator.validate(user);
		if(violations.size() > 0){
			throw new AssessmentGenericException("NOT_SUFFICIENT_PARAMS");
		}
		
		
	}
	
	public List<String> getAllTenantSchemas() throws SQLException{
		String sql = "SHOW DATABASES";
		List<String> schemas = new ArrayList<>();
		ResultSet rs = dataSource.getConnection().createStatement().executeQuery(sql);
			while(rs.next()) {
					String sc = rs.getString(1);
				logger.info(sc);
				logger.debug(sc);
					if(!(sc.equalsIgnoreCase("assessment") || sc.equalsIgnoreCase("information_schema") || sc.equalsIgnoreCase("mysql") || sc.equalsIgnoreCase("performance_schema") || sc.equalsIgnoreCase("sys"))) {
						schemas.add(sc);
						logger.info("in");
						logger.debug("in");
					}
			}
			
			return schemas;
	}
	
	
	
	/**
	 * Returns null if validation false
	 * Returns User object if validation true
	 */
	public User authenticate(String user, String password, String company) {
		Company comp = companyService.findByCompanyName(company);
			if(comp == null) {
				return null;
			}
			
		User usr = userRepository.findByPrimaryKeyAndPassword(user, password, comp.getCompanyId());
		if(usr == null) {
			return null;
		}
		
		return usr;
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		validateMandatoryFields(user);
		Company comp = companyService.findByPrimaryKey(user.getCompanyName(), user.getCompanyId());
		if(comp == null) {
			throw new AssessmentGenericException("NOT_SUFFICIENT_COMPANY_INFO");
		}
		if(findByPrimaryKey(user.getEmail(), user.getCompanyId()) == null) {
			user.setCreateDate(new Date());
			userRepository.save(user);
		}
		else {
			throw new AssessmentGenericException("USER_ALREADY_EXISTS");
		}
	}

	@Override
	public void updateUser(User user) {
		User user2= findByPrimaryKey(user.getEmail(), user.getCompanyId());
		if( user2 != null) {
			user.setUpdateDate(new Date());
			user.setId(user2.getId());
			Mapper mapper = new DozerBeanMapper();
			mapper.map(user, user2);
			userRepository.save(user2);
		}
		else {
			throw new AssessmentGenericException("USER_NOT_FOUND");
		}
		
	}

	@Override
	public User findByPrimaryKey(String email, String companyId) {
		// TODO Auto-generated method stub
		List<User> usrs = userRepository.findByPrimaryKeyFromList(email, companyId);
			if(usrs == null || usrs.size() == 0){
				return null;
			}
			
			return usrs.get(0);
		//return userRepository.findByPrimaryKey(email, companyId);
	}

	public synchronized void saveOrUpdate(User user) {
		User user2= findByPrimaryKey(user.getEmail(), user.getCompanyId());
		if( user2 != null) {
			user.setUpdateDate(new Date());
			user.setId(user2.getId());
			Mapper mapper = new DozerBeanMapper();
			mapper.map(user, user2);
			user2.setLic(user.getLic());
			userRepository.save(user2);
		}
		else {
			user.setCreateDate(new Date());
			userRepository.save(user);
		}
	}
	
	public synchronized void saveOrUpdateUser(User user) {
		User user2= findByPrimaryKey(user.getEmail(), user.getCompanyId());
		if( user2 != null) {
			user.setUpdateDate(new Date());
			user.setId(user2.getId());
			Mapper mapper = new DozerBeanMapper();
			mapper.map(user, user2);
			userRepository.save(user2);
		}
		else {
			user.setCreateDate(new Date());
			userRepository.save(user);
		}
	}
	
	public List<User> findByCompany(  String companyId){
		return userRepository.findByCompany(companyId);
	}
	
	public User findById(Long id) {
		return userRepository.findById(id).get();
	}
	
	public List<User> searchUsers(String companyId, String text){
		return userRepository.searchQuestions(companyId, text);
	}

	@Override
	public Page<User> findUsersByTypeAndCompany(String companyId, String userType, Pageable pageable) {
		// TODO Auto-generated method stub
		return userRepository.findUsersByTypeAndCompany(companyId, UserType.valueOf(userType), pageable);
	}

	@Override
	public List<String> findInstituteGradeClassifier(String companyId, String collegeName) {
		// TODO Auto-generated method stub
		return userRepository.findInstituteGradeClassifier(companyId, collegeName);
	}

	@Override
	public List<User> findByInstituteGradeClassifier(String companyId, String collegeName, String grade,
			String classifier) {
		// TODO Auto-generated method stub
		return userRepository.findByInstituteGradeClassifier(companyId, collegeName, grade, classifier);
	}

	@Override
	public List<String> findEmailByInstituteGradeClassifier(String companyId, String collegeName, String grade,
			String classifier) {
		// TODO Auto-generated method stub
		return userRepository.findEmailByInstituteGradeClassifier(companyId, collegeName, grade, classifier);
	}

	@Override
	public void saveOrUpdateRecruiter(User user) {
		User user2= findByPrimaryKey(user.getEmail(), user.getCompanyId());
		if( user2 != null) {
			user.setUpdateDate(new Date());
			user.setCreateDate(user2.getCreateDate());
			user.setId(user2.getId());
			Mapper mapper = new DozerBeanMapper();
			mapper.map(user, user2);
			userRepository.save(user2);
		}
		else {
			user.setCreateDate(new Date());
			userRepository.save(user);
		}
	}

	@Override
	public Page<User> searchRecruiters(String companyId, String searchText, Pageable pageable) {
		// TODO Auto-generated method stub
		return userRepository.searchRecruiters(companyId, searchText, pageable);
	}

}
