package todo.service;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.cj.Session;

import todo.dao.TodoDao;
import todo.dto.Customer;
import todo.dto.Task;

@Component
public class TodoService {

	@Autowired
	TodoDao dao;

	public String saveUser(Customer customer, ModelMap map) {
		List<Customer> email = dao.findUserByEmail(customer.getEmail());
		if (email.isEmpty()) {
			dao.save(customer);
			map.put("positiveMsg", "Account Created Sucessfully");
			return "login";
		} else {
			map.put("negativeMsg", "Email should be Unique");
			return "signup";
		}
	}

	public String login(String email, String password, ModelMap map, HttpSession session) {
		List<Customer> list = dao.findUserByEmail(email);
		Customer customer = list.get(0);

		if (list.isEmpty()) {
			map.put("negativeMsg", "Incorrect Email");
			return "login";
		} else {
			if (password.equals(customer.getPassword())) {
				session.setAttribute("customer", list.get(0));

				map.put("positiveMsg", "Loggedin Successfully");

				List<Task> tasks = dao.findTaskByUserId(customer.getId());
				map.put("task", tasks);

				return "home";
			} else {
				map.put("negativeMsg", "Incorrect Password");
				return "login";
			}
		}
	}

	public String logout(ModelMap map, HttpSession session) {
		session.removeAttribute("customer");
		map.put("positiveMsg", "LOGGED OUT SUCCESSFULLY");
		return "login";
	}

	public String addTaskMapping(ModelMap map, HttpSession session) {
		Customer user = (Customer) session.getAttribute("customer");
		if (user == null) {
			map.put("negativeMsg", "Invalid Session");
			return "login";
		} else {
			return "addTask";
		}

	}

	public String addTask(Task task, ModelMap map, HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			map.put("negativeMsg", "Invalid Session");
			return "login";
		} else {
			task.setAddedTime(LocalDateTime.now());
			task.setCustomer(customer);
			dao.save_task(task);
			dao.findTaskByUserId(customer.getId());
			map.put("positiveMsg", "Task added Successfully");
			List<Task> tasks = dao.findTaskByUserId(customer.getId());
			map.put("task", tasks);
			return "home";
		}
	}

	public String completeTask(ModelMap map, HttpSession session, int id) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			map.put("negativeMsg", "Invalid Session");
			return "login";
		} else {
			Task task = dao.findTaskById(id);
			task.setStatus(true);
			dao.update_task(task);
			map.put("positiveMsg", "Status Changed Success");

			List<Task> tasks = dao.findTaskByUserId(customer.getId());
			map.put("task", tasks);

			return "home";
		}

	}

	public String deleteTask(ModelMap map, HttpSession session, int id) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			map.put("negativeMsg", "Invalid Session");
			return "login";
		} else {
			Task task = dao.findTaskById(id);

			dao.delete_task(task);

			map.put("success", "Task Deleted Success");

			List<Task> tasks = dao.findTaskByUserId(customer.getId());
			map.put("task", tasks);
			return "home";
		}
	}

	public String editTask(ModelMap map, HttpSession session,int id) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			map.put("negativeMsg", "Invalid Session");
			return "login";
		} else {
			Task task = dao.findTaskById(id);
			map.put("task", task);
			return "EditTask";
		}
	}

	public String editTask(ModelMap map, HttpSession session, @RequestParam int id, Task task) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			map.put("negativeMsg", "Invalid Successfully");
			return "login";
		} else {
			task.setId(id);
			task.setStatus(false);
			task.setCustomer(customer);

			dao.update_task(task);

			List<Task> tasks = dao.findTaskByUserId(customer.getId());
			map.put("task", tasks);


			map.put("positiveMsg", "Task added Successfully");

			return "home";
		}
	}
}
