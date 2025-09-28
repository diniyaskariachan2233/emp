package com.yourcompany.ems.service;

import com.yourcompany.ems.entity.Department;
import com.yourcompany.ems.repository.DepartmentRepository;
import com.yourcompany.ems.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.Optional;

@Service
public class DepartmentService {

    private final DepartmentRepository departmentRepository;
    private final EmployeeRepository employeeRepository;

    @Value("${app.pagination.default-size:20}")
    private int defaultPageSize;

    public DepartmentService(DepartmentRepository departmentRepository, EmployeeRepository employeeRepository) {
        this.departmentRepository = departmentRepository;
        this.employeeRepository = employeeRepository;
    }

    public Department createDepartment(Department department) {
        return departmentRepository.save(department);
    }

    public Page<Department> getAllDepartments(int page, Integer size) {
        int pageSize = size != null ? size : defaultPageSize;
        return departmentRepository.findAll(PageRequest.of(page, pageSize));
    }

    @Transactional
    public Optional<Department> updateDepartment(Long id, Department updatedDetails) {
        return departmentRepository.findById(id).map(department -> {
            if (updatedDetails.getName() != null) department.setName(updatedDetails.getName());
            if (updatedDetails.getDepartmentHead() != null) department.setDepartmentHead(updatedDetails.getDepartmentHead());
            return departmentRepository.save(department);
        });
    }

    public void deleteDepartment(Long id) {
        long employeeCount = employeeRepository.countByDepartmentId(id);
        
        // Fails if employees are assigned
        if (employeeCount > 0) {
            throw new IllegalStateException("Cannot delete department with " + employeeCount + " assigned employees.");
        }
        departmentRepository.deleteById(id);
    }
}
