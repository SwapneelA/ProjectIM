package com.gasagency.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.IAccountDAO;
import com.gasagency.service.intf.IAccountService;

public class AccountServiceImpl implements IAccountService
{
	private IAccountDAO accountDAO;	
	
	@Autowired
	public void setAccountDAO(IAccountDAO accountDAO) 
	{
		this.accountDAO = accountDAO;
	}
	public boolean validateUser(String username, String password) 
	{
		/*Account account = new Account();
		account.setUsername(username);
		account.setPassword(password);*/
		return accountDAO.validateUser(username,password);
		
	}

}
