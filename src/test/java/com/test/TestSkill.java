package com.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.Skill;
import com.assessment.data.SkillLevel;
import com.assessment.repositories.SkillRepository;
import com.assessment.services.SkillService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:appContext.xml"})
@Transactional
public class TestSkill {
	
	@Autowired
	SkillService skilService;
	
	@Autowired
	SkillRepository skillRepository;
	
	final String companyId = "Ex1";
	final String companyName = "Raaj_Enterprises";
	
	@Test
	@Rollback(value=false)
	public void testCreateSkill() {
		Skill skill = new Skill("Java", SkillLevel.BASIC);
		skill.setCompanyId("IH");
		skill.setCompanyName("IIHT");
		skilService.createSkill(skill);
	}
	
	@Test
	@Rollback(value=false)
	public void testgetSkillNames() {
		List<String> names = skillRepository.getSkillNamessByCompanyId("IH");
		for(String name : names){
			System.out.println(name);
		}
	}

}
