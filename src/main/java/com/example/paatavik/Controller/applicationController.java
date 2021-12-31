package com.example.paatavik.Controller;

import com.example.paatavik.Model.place;
import com.example.paatavik.Model.user;
import com.example.paatavik.Service.placeService;
import com.example.paatavik.Service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("All")
@Controller
public class applicationController {
    @Autowired

    private userService us;
    @Autowired
    private placeService ps;

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute user u, HttpServletRequest req) throws IOException{
        us.registerUser(u);
        String user = u.getUsername();
        req.setAttribute("user", user);
        return "home";
    }

    @PostMapping("/userLogin")
    public String userLogin(@ModelAttribute user u, HttpServletRequest req){
        String user = u.getUsername();
        String password = u.getPassword();
        if (us.loginUser(user,password)!=null){
            String username = us.loginUser(user,password).getUsername();
//            req.setAttribute("user", user);
            req.getSession().setAttribute("username", user);
            System.out.println(user);
            return "home";
        }
        else{
            req.setAttribute("error","Invalid Credentials");
            return "index";
        }
    }

    @RequestMapping("/profile")
    public String profile(@RequestParam String username, HttpServletRequest req){
        req.setAttribute("data",us.userData(username));
        System.out.println(us.userData(username));
        return "profile";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest req){
        req.getSession().invalidate();
        return "index";
    }

    @RequestMapping("/map")
    public String map(){
        return "map";
    }

    @GetMapping("/places")
    public String places(HttpServletRequest req){
        List<place> p1=ps.placesList();
        if(p1!=null) {
            req.setAttribute("data", p1);
            return "places";
        }
        return "home";
    }

    @RequestMapping("/city")
    public String city(@RequestParam String city, HttpServletRequest req){
        req.setAttribute("data",ps.placeData(city));
        System.out.println(ps.placeData(city));
        return "city";
    }
}
