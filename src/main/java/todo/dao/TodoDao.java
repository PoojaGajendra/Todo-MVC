package todo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import todo.dto.Customer;
import todo.dto.Task;

@Component
public class TodoDao {

	@Autowired
	EntityManager manager;

	public void save(Customer customer) {
		manager.getTransaction().begin();
		manager.persist(customer);
		manager.getTransaction().commit();
	}

	public void update_task(Task task) {
		manager.getTransaction().begin();
		manager.merge(task);
		manager.getTransaction().commit();
	}

	public void save_task(Task task) {
		manager.getTransaction().begin();
		manager.persist(task);
		manager.getTransaction().commit();
	}

	public void delete_task(Task task) {
		manager.getTransaction().begin();
		manager.remove(task);
		manager.getTransaction().commit();
	}

	public List<Customer> findUserByEmail(String email) {
		return manager.createQuery("select x from Customer x where email=?1").setParameter(1, email).getResultList();
	}

	public List<Customer> findUserByMobile(long mobileNo) {
		return manager.createQuery("select x from Customer x where mobile=?1").setParameter(1, mobileNo).getResultList();
	}

	public List<Task> findTaskByUserId(int customer_id) {
		return manager.createQuery("select x from Task x where customer_id=?1").setParameter(1, customer_id).getResultList();
	}

	public Task findTaskById(int Id) {
		return manager.find(Task.class, Id);
	}
}
