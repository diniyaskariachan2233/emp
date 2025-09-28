package com.yourcompany.ems.service;

import com.yourcompany.ems.entity.Department;
import com.yourcompany.ems.entity.Employee;
import com.yourcompany.ems.repository.DepartmentRepository;
import com.yourcompany.ems.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.Optional;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;
    private final DepartmentRepository departmentRepository;

    @Value("${app.pagination.default-size:20}")
    private int defaultPageSize;

    public EmployeeService(EmployeeRepository employeeRepository, DepartmentRepository departmentRepository) {
        this.employeeRepository = employeeRepository;
        this.departmentRepository = departmentRepository;
    }

    public Employee createEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public Page<Employee> getAllEmployees(int page, Integer size) {
        int pageSize = size != null ? size : defaultPageSize;
        return employeeRepository.findAll(PageRequest.of(page, pageSize));
    }

    @Transactional
    public Optional<Employee> updateEmployee(Long id, Employee updatedDetails) {
        return employeeRepository.findById(id).map(employee -> {
            if (updatedDetails.getName() != null) employee.setName(updatedDetails.getName());
            if (updatedDetails.getSalary() != null) employee.setSalary(updatedDetails.getSalary());
            if (updatedDetails.getRole() != null) employee.setRole(updatedDetails.getRole());
            if (updatedDetails.getReportingManager() != null) employee.setReportingManager(updatedDetails.getReportingManager());
            return employeeRepository.save(employee);
        });
    }

    @Transactional
    public Optional<Employee> updateEmployeeDepartment(Long employeeId, Long newDepartmentId) {
        Optional<Employee> employeeOpt = employeeRepository.findById(employeeId);
        Optional<Department> departmentOpt = departmentRepository.findById(newDepartmentId);

        if (employeeOpt.isPresent() && departmentOpt.isPresent()) {
            Employee employee = employeeOpt.get();
            employee.setDepartment(departmentOpt.get()); 
            return Optional.of(employeeRepository.save(employee));
        }
        return Optional.empty();
    }
}/
