package com.crud.day09.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day09.dao.AccountDAO;
import com.crud.day09.vo.Account;

@Service
public class AccountBO {

	@Autowired
	private AccountDAO accountDAO;
	
	public int insertAccount(Account account) {
		return accountDAO.insertAccount(account);
	}
	
	public List<Account> selectAccount() {
		return accountDAO.selectAccount();
	}
	
	public int deleteAccountById(Account account) {
		return accountDAO.deleteAccountById(account);
	}
	
	public Account selectAccountById(int id) {
		return accountDAO.selectAccountById(id);
	}
	
	public int updateAccountById(Account account) {
		return accountDAO.updateAccountById(account);
	}
}
