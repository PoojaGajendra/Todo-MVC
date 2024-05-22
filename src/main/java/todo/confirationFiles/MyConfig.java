package todo.confirationFiles;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("todo")
public class MyConfig {

	

	@Bean
	public ViewResolver resolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("frontend/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	@Bean
	public EntityManager getEM() {
//		EntityManagerFactory factory = Persistence.createEntityManagerFactory("poi");
//		EntityManager manager = factory.createEntityManager();
//								OR
		return Persistence.createEntityManagerFactory("dev").createEntityManager();


	}
}
