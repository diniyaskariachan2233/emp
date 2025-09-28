package com.yourcompany.ems.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;
import java.math.BigDecimal;

@Entity
@Data
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String name;
    
    private LocalDate dateOfBirth; 
    
    private BigDecimal salary;
    
    private String address;
    
    private String role; 
    
    private LocalDate joiningDate;
    
    private Double yearlyBonusPercentage;

    // Department relationship
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "department_id", nullable = false)
    private Department department; 

    // Reporting Manager relationship (Self-referencing)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "manager_id")
    private Employee reportingManager; 
}
