package com.happyman.Ruby.employeeManagement.dto;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmployeeDTO {
    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private String contact;
    private double salary;

    // Getters and setters
}
