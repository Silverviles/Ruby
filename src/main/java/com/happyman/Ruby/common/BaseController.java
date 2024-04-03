package com.happyman.Ruby.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.happyman.Ruby.masterService.MasterService;
import com.happyman.Ruby.masterService.MasterServiceImpl;

@Controller
public class BaseController {
	protected static final Logger LOG = LoggerFactory.getLogger(BaseController.class);

	protected MasterService masterService;

	@Autowired
	public BaseController(MasterService masterService){
		this.masterService = masterService;
	}
	// TODO: Extend all the other controllers from this controller. Use masterService to access data.
}
