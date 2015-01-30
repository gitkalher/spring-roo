// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springroo.model;

import com.springroo.model.Employee;
import java.util.Calendar;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Employee_Roo_Finder {
    
    public static TypedQuery<Employee> Employee.findEmployeesByDateOfBirthBetween(Calendar minDateOfBirth, Calendar maxDateOfBirth) {
        if (minDateOfBirth == null) throw new IllegalArgumentException("The minDateOfBirth argument is required");
        if (maxDateOfBirth == null) throw new IllegalArgumentException("The maxDateOfBirth argument is required");
        EntityManager em = Employee.entityManager();
        TypedQuery<Employee> q = em.createQuery("SELECT o FROM Employee AS o WHERE o.dateOfBirth BETWEEN :minDateOfBirth AND :maxDateOfBirth", Employee.class);
        q.setParameter("minDateOfBirth", minDateOfBirth);
        q.setParameter("maxDateOfBirth", maxDateOfBirth);
        return q;
    }
    
    public static TypedQuery<Employee> Employee.findEmployeesByFirstNameLike(String firstName) {
        if (firstName == null || firstName.length() == 0) throw new IllegalArgumentException("The firstName argument is required");
        firstName = firstName.replace('*', '%');
        if (firstName.charAt(0) != '%') {
            firstName = "%" + firstName;
        }
        if (firstName.charAt(firstName.length() - 1) != '%') {
            firstName = firstName + "%";
        }
        EntityManager em = Employee.entityManager();
        TypedQuery<Employee> q = em.createQuery("SELECT o FROM Employee AS o WHERE LOWER(o.firstName) LIKE LOWER(:firstName)", Employee.class);
        q.setParameter("firstName", firstName);
        return q;
    }
    
    public static TypedQuery<Employee> Employee.findEmployeesByLastNameEquals(String lastName) {
        if (lastName == null || lastName.length() == 0) throw new IllegalArgumentException("The lastName argument is required");
        EntityManager em = Employee.entityManager();
        TypedQuery<Employee> q = em.createQuery("SELECT o FROM Employee AS o WHERE o.lastName = :lastName", Employee.class);
        q.setParameter("lastName", lastName);
        return q;
    }
    
    public static TypedQuery<Employee> Employee.findEmployeesByLastNameLike(String lastName) {
        if (lastName == null || lastName.length() == 0) throw new IllegalArgumentException("The lastName argument is required");
        lastName = lastName.replace('*', '%');
        if (lastName.charAt(0) != '%') {
            lastName = "%" + lastName;
        }
        if (lastName.charAt(lastName.length() - 1) != '%') {
            lastName = lastName + "%";
        }
        EntityManager em = Employee.entityManager();
        TypedQuery<Employee> q = em.createQuery("SELECT o FROM Employee AS o WHERE LOWER(o.lastName) LIKE LOWER(:lastName)", Employee.class);
        q.setParameter("lastName", lastName);
        return q;
    }
    
}