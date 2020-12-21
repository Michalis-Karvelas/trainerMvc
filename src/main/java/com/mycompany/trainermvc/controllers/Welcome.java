package com.mycompany.trainermvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class Welcome {

    @RequestMapping(value = {"/", "/welcome"}, method = {RequestMethod.GET})
    public String welcome(ModelMap view) {
        view.addAttribute("projectName", "Trainer Mvc");
        return ("welcome");
    }

}
