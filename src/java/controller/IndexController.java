package controller;

import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;
import model.Login;
import model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

    @RequestMapping(value = "/")
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/services")
    public String services() {
        return "login";
    }

    @RequestMapping(value = "/admin")
    public String admin() {
        return "admin_home";
    }
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap map) {
        map.addAttribute("heading", "Register");
        return "register";
    }

    
            
    @RequestMapping(value = "/register_action")
    public String addStudent(@ModelAttribute("SpringWeb") User user, Login login, ModelMap model) {

        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session session = sf.openSession();
        Transaction tr = session.beginTransaction();
        
        session.save(user);
        login.setUser(user);
        session.save(login);
        tr.commit();
        return "login";

    }
    
     @RequestMapping(value = "/login_action",method = RequestMethod.POST)
     public String login_action(@ModelAttribute("SpringWeb") Login login, ModelMap model) {
        
         List<User> login_list;
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session session = sf.openSession();
        Transaction tr = session.beginTransaction();
       
        String qry = "From Login l where l.username ='"+login.getUsername()+"' and l.password = '"+login.getPassword()+"' ";
       
        login_list = session.createQuery(qry).list();
       
        Iterator it=login_list.iterator();
        String type=null;
        if(it.hasNext()){
            Object o=(Object) it.next();
            Login log=(Login)o;
            type=log.getType();
            if(type.equalsIgnoreCase("admin")){
                type = "admin_home";
            }
            else if(type.equalsIgnoreCase("user")){
                type = "user_home";
            }
            
            
        }
        else{
            type= "login";
        }
        
                
         session.getTransaction().commit();
        return type;
       
        
    }
}
