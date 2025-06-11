//package WebApp1.TodoList.Todo;
//
//import jakarta.validation.Valid;
//import org.springframework.stereotype.Service;
//
//import java.time.LocalDate;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.function.Predicate;
//
//@Service
//public class TodoService {
//    private static final List<Todo> todos = new ArrayList<>();
//
//    private static int id = 0;
//
//    static {
//        todos.add(new Todo(++id, "Vishnuyash", "Learn Spring Boot",
//                LocalDate.now().plusMonths(1), false));
//        todos.add(new Todo(++id, "Vishnuyash", "Learn Backend",
//                LocalDate.now().plusMonths(2), false));
//        todos.add(new Todo(++id, "Vishnuyash", "Learn SQL",
//                LocalDate.now().plusMonths(3), false));
//    }
//
//    public List<Todo> findByUserName(String name) {
//        Predicate<? super Todo> predicate = todo -> todo.getUsername().equalsIgnoreCase(name);
//        return todos.stream().filter(predicate).toList();
//    }
//
//    public void addTodo(String username, String description, LocalDate target, boolean isDone) {
//        todos.add(new Todo(++id, username, description, target, isDone));
//    }
//
//    public void deleteById(int id) {
//        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
//        todos.removeIf(predicate);
//    }
//
//    public Todo findById(int id) {
//        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
//        return todos.stream().filter(predicate).findFirst().get();
//    }
//
//    public void updateTodo(@Valid Todo todo) {
//        deleteById(todo.getId());
//        todos.add(todo);
//    }
//}
