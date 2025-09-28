package com.yourcompany.ems.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;
import java.util.List;

@Entity
@Data
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false, unique = true)
    private String name;
    
    @Column(nullable = false)
    private LocalDate creationDate;

    // Department Head (Employee who exists in the employee table)
    @OneToOne
    @JoinColumn(name = "head_employee_id")
    private Employee departmentHead;

    // Employees under this department (for expand=employee functionality)
    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<Employee> employees; 
}
