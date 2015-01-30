package com.springroo.controller;
import com.springroo.model.Employee;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/private")
@Controller
@RooWebScaffold(path = "private", formBackingObject = Employee.class)
public class EmployeeController {
}
