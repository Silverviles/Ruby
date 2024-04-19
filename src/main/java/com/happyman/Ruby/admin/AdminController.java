package com.happyman.Ruby.admin;


import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Room;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(AdminController.class);


    @GetMapping("/temp1")
    public String goTemp1(Model model) {
        List<Room> rooms = masterService.getAllRoom();
        model.addAttribute("room", rooms);
        return "common/admin_sidebar";
    }
}
