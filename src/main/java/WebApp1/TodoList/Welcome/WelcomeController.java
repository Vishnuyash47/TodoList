package WebApp1.TodoList.Welcome;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("name")
public class WelcomeController {
    //    private Logger logger = LoggerFactory.getLogger(getClass());
//    @RequestMapping("login")
//    public String loginJsp(@RequestParam String name, ModelMap model) {
//        logger.info("Printing at info logging level {}", name);
//        model.put("name", name);
//        return "login";
//    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcomePage(ModelMap modelMap) {
        modelMap.put("name", getUserName());
        return "welcome";
    }

    private String getUserName() {
        Authentication authentication = SecurityContextHolder
                .getContext().getAuthentication();
        return authentication.getName();
    }

}
