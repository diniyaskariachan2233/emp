package com.yourcompany.ems.repository;

import com.yourcompany.ems.entity.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Long> {
    // Standard CRUD methods inherited
}
