package com.nexential.springBoot.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nexential.springBoot.entity.Toy;
import com.nexential.springBoot.repository.ToyRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ToyController {

	@Autowired
	public ToyRepository toyRepo;

	@GetMapping("/")
	public String home(Model m) {
//
		return findPaginateAndSorting(0, m);
	}

	@GetMapping("/page/{pageNo}")
	public String findPaginateAndSorting(@PathVariable(value = "pageNo") int pageNo, Model m) {
		Pageable pageable = PageRequest.of(pageNo, 3);
		Page<Toy> page = toyRepo.findAll(pageable);
		List<Toy> list = page.getContent();
		m.addAttribute("pageNo", pageNo);
		m.addAttribute("totalElements", page.getTotalElements());
		m.addAttribute("totalPage", page.getTotalPages());
		m.addAttribute("all_products", list);
		return "index";
	}
	
	@GetMapping("/load_form")
	public String loadform() {
		return "add";
	}
	
	@GetMapping("/edit_form/{id}")
	public String editform(@PathVariable(value="id")long id,Model m) {
		Optional<Toy> product=toyRepo.findById(id);
		Toy pro=product.get();
		m.addAttribute("product",pro);
		return "edit";
	}
	@PostMapping("/save_products")
	public String saveProduct(@ModelAttribute Toy product, HttpSession session) {
		
		toyRepo.save(product);
		session.setAttribute("msg", "Toy Added Sucessfully");
		
		return "redirect:/";
	}
	
	@PostMapping("/update_products")
	public String updateProduct(@ModelAttribute Toy product, HttpSession session) {
		
		toyRepo.save(product);
		session.setAttribute("msg", "Toy update Sucessfully");
		
		return "redirect:/";
	}
	@GetMapping("/delete/{id}")
	public String deleteProduct(@PathVariable(value="id")long id,HttpSession session) {
		toyRepo.deleteById(id);
		session.setAttribute("msg", "Toy Deleted Sucessfully");
		return "redirect:/";
	}
}
