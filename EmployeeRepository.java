package com.yourcompany.ems.repository;

import com.yourcompany.ems.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    
    // Required for the Delete Department business rule
    long countByDepartmentId(Long departmentId);
}
