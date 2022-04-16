package com.crud.day09;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day09.bo.AccountBO;
import com.crud.day09.vo.Account;

@Controller
public class AccountController {

	@Autowired
	private AccountBO accountBO;
	
	@RequestMapping("/day09/create_view")
	public String createView() {
		return "day09/create";
	}
	
	@RequestMapping("/day09/list_view")
	public String listView(Model model) {
		List<Account> accountList = accountBO.selectAccount();
		model.addAttribute("accountList",accountList);
		return "day09/list";
	}
	
	@RequestMapping("/day09/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Account account = accountBO.selectAccountById(id);
		model.addAttribute("account",account);
		return "day09/detail";
	}
}
