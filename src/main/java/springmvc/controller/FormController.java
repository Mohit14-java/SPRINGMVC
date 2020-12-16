package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.entities.User;

@Controller
public class FormController {
    @RequestMapping("/form")
    public String showForm() {
        return "form";
    }

    // using @ModelAttribute
    @RequestMapping(value = "/process", method = RequestMethod.POST)
    public String handleForm(@ModelAttribute User user, Model model) {
        System.out.println(user);
        return "Success";
    }
    @ModelAttribute
    public void commonAttribute(Model model){
        model.addAttribute("Header","User Registration");
    }
}











// using @RequestParam
/** @RequestMapping(value = "/process", method = RequestMethod.POST)
public String handleForm(@RequestParam("userName") String userName,
 @RequestParam("email") String email,
 @RequestParam("password") String password, Model model) {

 User user = new User();
 user.setUserName(userName);
 user.setEmail(email);
 user.setPassword(password);
 model.addAttribute("user",user);
 return "Success";
 } */