package vinhsang.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import vinhsang.repository.Testrepo;

@Controller
public class testCtrl {

	  @PersistenceContext
	  private EntityManager em;
	@Autowired
	private Testrepo testrepo;
	@GetMapping(value="/test1")
	@ResponseBody
	public String test1(){
		
		System.out.println(testrepo.gettest1().toString());
		return "123";
	}
	@GetMapping(value="/test2")
	@ResponseBody
	public String test2(){
		@SuppressWarnings("unchecked")
		List<Object[]> results =(List<Object[]>)em.createNativeQuery("select * from services").getResultList();
		System.out.println(results.size());

		
		return "123234324";
	}
}
