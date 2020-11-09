package com.gabin.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.gabin.VO.Manage;
import com.gabin.service.ManageService;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
@Controller
@RequestMapping("/board/*")
@Slf4j
//@AllArgsConstructor 
public class BoardController {
	@Setter(onMethod_= @Autowired)
	private ManageService service;
	private final String MODULE = "board";
	//@AllArgsConstructor : 생성자를 이용한 자동DI적용
	//@Autowired : Setter를 이용한 자동DI적용
	//리스트
	@GetMapping("/list")
	public String list(Model model) {
		//model에 데이터를 담으면 request에 데이터가 담기게 된다.
		//jsp에서 꺼내 쓸때는 ${list} == ${requestScope.list}
		model.addAttribute("list",service.list());
		System.out.println(" list controller");
		return MODULE + "/ListForm";
	}
	//추가
	@GetMapping("/add")
	public String insertForm() {
//		return MODULE + "/AddForm";
		return "board/AddForm";
	}
	@PostMapping("/add")
	public String insert(Manage manage) {
		System.out.println("여기로 들어옴");
		service.insert(manage);
		return "redirect:list";
	}
	
}
