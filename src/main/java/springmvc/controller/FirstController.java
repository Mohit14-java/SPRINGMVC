package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
@RequestMapping("/first")
@Controller
public class FirstController {
    @RequestMapping("/home")
    public String home(){
        System.out.println("This is a home controller");
        return "Home";
    }

    @RequestMapping("/about")
    public String about(){
        System.out.println("This is an about controller");
        return "About";
    }
    @RequestMapping("/model")
    public String data(Model model){
        model.addAttribute("name","Mohit");
        List<String> list=new ArrayList<String>();
        list.add("Tushar");
        list.add("Sahil");
        model.addAttribute("friends",list);
        return "Data";
    }
    @RequestMapping("/modelAndView")
    public ModelAndView modelAndView(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("name","Mohit");
        modelAndView.setViewName("ModelAndView");
        return modelAndView;

    }
    @RequestMapping("/jstl")
    public String jstlTag(Model model){
        model.addAttribute("name","Mohit");
        model.addAttribute("id",124);
        List<String> city=new ArrayList<String>();
        city.add("Rajkot");
        city.add("Surat");
        city.add("Bhavanagar");
        model.addAttribute("village",city);
        return "JstlTag";
    }


}
