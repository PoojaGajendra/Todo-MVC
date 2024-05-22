package todo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.cj.Session;

import todo.dto.Customer;
import todo.dto.Task;
import todo.service.TodoService;

@Controller
@Component
public class TodoController {
	@Autowired
	TodoService service;

	@GetMapping({ "/", "/login" })
	public String loadlogin() {
		return "login";
	}

	@GetMapping("/signup")
	public String loadsignup() {
		return "signup";
	}

	@PostMapping("/signup")
	public String signup(Customer customer, ModelMap map) {
		return service.saveUser(customer, map);
	}

	@PostMapping("/login")
	public String postlogin(@RequestParam String email, @RequestParam String password, ModelMap map,
			HttpSession session) {
		return service.login(email, password, map, session);
	}

	@GetMapping("/logout")
	public String logout(ModelMap map, HttpSession session) {
		return service.logout(map, session);
	}

	@GetMapping("/addTask")
	public String addTaskMapping(ModelMap map, HttpSession session) {
		return service.addTaskMapping(map, session);
	}

	@PostMapping("/addTask")
	public String addTask(Task task, ModelMap map, HttpSession session) {
		return service.addTask(task, map, session);
	}

	@GetMapping("/completeTask")
	public String completeTask(ModelMap map, HttpSession session, @RequestParam int id) {
		return service.completeTask(map, session, id);
	}

	@GetMapping("/deleteTask")
	public String deleteTask(ModelMap map, HttpSession session, @RequestParam int id) {
		return service.deleteTask(map, session, id);
	}

	@GetMapping("/editTask")
	public String editTaskMapping(ModelMap map, HttpSession session,int id) {
		return service.editTask(map, session,id);
	}

	@PostMapping("/editTask")
	public String editTask(ModelMap map, HttpSession session, @RequestParam int id, Task task) {
		return service.editTask(map, session, id, task);
	}
}
