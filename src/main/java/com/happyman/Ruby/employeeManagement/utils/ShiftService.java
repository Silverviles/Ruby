package com.happyman.Ruby.employeeManagement.utils;

import com.happyman.Ruby.employeeManagement.dto.ShiftDTO;
import java.util.ArrayList;
import java.util.List;

public class ShiftService {

    private static List<ShiftDTO> shiftList = new ArrayList<>();

    // Method to save an employee shift
    public static void saveEmployeeShift(ShiftDTO shiftDTO) {
        shiftList.add(shiftDTO);
    }

    // Method to update an employee shift
    public static void updateEmployeeShift(String employeeName, String newShift) {
        for (ShiftDTO shift : shiftList) {
            if (shift.getEmployeeName().equals(employeeName)) {
                shift.setShift(newShift);
                return;
            }
        }
    }

    // Method to delete an employee shift
    public static void deleteEmployeeShift(String employeeName) {
        shiftList.removeIf(shift -> shift.getEmployeeName().equals(employeeName));
    }

    // Method to get all employee shifts
    public static List<ShiftDTO> getAllEmployeeShifts() {
        return shiftList;
    }

    // Method to get employee shift by name
    public static ShiftDTO getEmployeeShiftByName(String employeeName) {
        for (ShiftDTO shift : shiftList) {
            if (shift.getEmployeeName().equals(employeeName)) {
                return shift;
            }
        }
        return null;
    }
}
