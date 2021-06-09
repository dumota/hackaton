package com.concessionaria.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.concessionaria.services.VeiculosServices;

@Controller
public class IndexController {
	
	@Autowired
	private VeiculosServices services;
	
	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("listVeiculos", services.listAll());
		return "index";
	}
}
