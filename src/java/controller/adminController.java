
package controller;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class adminController {
    
    @RequestMapping(value = "/admin/")
    public String home() {
        return "index";
    }
    
    ////----LOGIN------/////
    @RequestMapping(value = "/admin/view-users", method = RequestMethod.GET)
    public String login(ModelMap map) {
       
        return "admin_view_users";
    }
    
    @RequestMapping(value= "/www.bus_spring.com/admin_manage_routes")
    public String routes(ModelMap map){
        return "admin_manage_routes";
    }
    
}
