package com.gasagency.handler.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.handler.intf.IAccountHandler;
import com.gasagency.service.intf.IAccountService;

public class AccountHandlerImpl implements IAccountHandler {

	private IAccountService accountService;
	
	@Autowired
	public void setAccountService(IAccountService accountService) {
		this.accountService = accountService;
	}

	public boolean validateUser(String username, String password) {
		return accountService.validateUser(username, password);
		
	}

}
