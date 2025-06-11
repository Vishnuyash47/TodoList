//package WebApp1.TodoList.Todo;
//
//import jakarta.validation.Valid;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.SessionAttributes;
//
//import java.time.LocalDate;
//import java.util.List;
//
//@Controller
//@SessionAttributes("name")
//public class TodoController {
//
//    private final TodoService todoService;
//
//    public TodoController(TodoService todoService) {
//        this.todoService = todoService;
//    }
//
//    @RequestMapping("list-todos")
//    public String todos(ModelMap modelMap) {
//        List<Todo> todos = todoService.findByUserName(getUserName(modelMap));
//        modelMap.addAttribute("todos", todos);
//        return "listTodos";
//    }
//
//    @RequestMapping(value = "add-todo", method = RequestMethod.GET)
//    public String TodoPage(ModelMap modelMap) {
//        var todo = new Todo(0, getUserName(modelMap),
//                "", LocalDate.now(), false);
//        modelMap.put("todo", todo);
//        return "todo";
//    }
//
//    @RequestMapping(value = "add-todo", method = RequestMethod.POST)
//    public String addTodo(ModelMap modelMap, @Valid Todo todo, BindingResult result) {
//        if (result.hasErrors()) {
//            return "todo";
//        }
//        todoService.addTodo(getUserName(modelMap),
//                todo.getDescription(), todo.getTarget(), false);
//        return "redirect:list-todos";
//    }
//
//    @RequestMapping("delete-todo")
//    public String deleteTodo(@RequestParam int id) {
//        todoService.deleteById(id);
//        return "redirect:list-todos";
//    }
//
//    @RequestMapping(value = "update-todo", method = RequestMethod.GET)
//    public String showUpdateTodo(@RequestParam int id, ModelMap modelMap) {
//        var todo = todoService.findById(id);
//        modelMap.addAttribute("todo", todo);
//        return "todo";
//    }
//
//    @RequestMapping(value = "update-todo", method = RequestMethod.POST)
//    public String updateTodo(@Valid Todo todo, ModelMap modelMap, BindingResult result) {
//        if (result.hasErrors()) {
//            return "todo";
//        }
//        todo.setUsername(getUserName(modelMap));
//        todoService.updateTodo(todo);
//        return "redirect:list-todos";
//    }
//
//    private String getUserName(ModelMap modelMap) {
//        Authentication authentication = SecurityContextHolder
//                .getContext().getAuthentication();
//        return authentication.getName();
//    }
//}