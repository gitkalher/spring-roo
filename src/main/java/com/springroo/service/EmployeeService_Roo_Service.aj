// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springroo.service;

import com.springroo.model.Employee;
import com.springroo.service.EmployeeService;
import java.util.List;

privileged aspect EmployeeService_Roo_Service {
    
    public abstract long EmployeeService.countAllEmployees();    
    public abstract void EmployeeService.deleteEmployee(Employee employee);    
    public abstract Employee EmployeeService.findEmployee(Long id);    
    public abstract List<Employee> EmployeeService.findAllEmployees();    
    public abstract List<Employee> EmployeeService.findEmployeeEntries(int firstResult, int maxResults);    
    public abstract void EmployeeService.saveEmployee(Employee employee);    
    public abstract Employee EmployeeService.updateEmployee(Employee employee);    
}
