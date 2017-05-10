package com.musitorika.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {

  @RequestMapping("/greeting")
  public String getGreeting(Model model, @RequestParam(value = "name", required = false,
          defaultValue = "Thymeleaf") String name) {
    model.addAttribute("name", name);
    return "greeting";
  }

}

