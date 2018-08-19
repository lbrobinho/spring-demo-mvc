package com.luv2code.springdemo.mvc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    //add an initbinder ... to convet trim input strings
    //remove leading and trailing whitespace
    //resolve issue for our validation

    //inject the properties values into my spring controller

    @Value("#{countryOptions}")
    private Map<String, String> countryOptions;
    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }



    @RequestMapping("/showForm")
    public String showForm(Model model) {

        //create a new stduent object
        Student student = new Student();

        //add student object to the model
        model.addAttribute("student", student);

        // add the country options to the model
        model.addAttribute("theCountryOptions", countryOptions);
        //
        
        return "student-form";
    }

    @RequestMapping("/processForm")
    public String processForm(
                            @Valid @ModelAttribute("student") Student student,
                            BindingResult bindingResult) {

        System.out.println("the Student" + student.getFirstName() + student.getLastName()
        + student.getFavoriteLanguage());

        System.out.println("BindingResult is " + bindingResult);

        if(bindingResult.hasErrors()) {
            return "student-form";
        } else {
            return  "student-confirmation";
        }

    }
}
