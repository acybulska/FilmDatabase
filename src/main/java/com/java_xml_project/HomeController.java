package com.java_xml_project;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {



    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        model.addAttribute("message", "hi");
        return "hello";

    }

}
