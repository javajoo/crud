package com.crud.day09.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day09.vo.Account;

@Repository
public interface AccountDAO {

	public int insertAccount(Account account);
	
	public List<Account> selectAccount();
	
	public int deleteAccountById(Account account);
	
	public Account selectAccountById(int id);
	
	public int updateAccountById(Account account);
}
