package com.crud.day09;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day09.bo.AccountBO;
import com.crud.day09.vo.Account;

@RestController
public class AccountRestController {

	@Autowired
	private AccountBO accountBO;
	
	@PostMapping("/day09/create")
	public Map<String, Object> create(@ModelAttribute Account account) {
	
		int row = accountBO.insertAccount(account);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패");
		}
		return result;
	}
	
	@DeleteMapping("/day09/delete")
	public Map<String, Object> delete(Account account) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = accountBO.deleteAccountById(account);
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "삭제실패");
		}
		return result;
	}
	
	@PutMapping("/day09/update")
	public Map<String, Object> update(Account account) {
		 Map<String, Object> result = new HashMap<>();
		 result.put("result", "success");
		 int row = accountBO.updateAccountById(account);
		 if (row < 1) {
			 result.put("result", "error");
			 result.put("errorMessage", "수정실패");
		 }
		 return result;
		 
	}
	
}
