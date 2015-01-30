package com.springroo.repository;
import com.springroo.model.Employee;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Employee.class)
public interface EmployeeRepo {
}
