//package com.happyman.Ruby.employeeManagement.Utils;
//
//import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
//import com.happyman.Ruby.masterService.MasterService;
//
//
//import org.apache.commons.lang3.StringUtils;
//import org.mindrot.jbcrypt.BCrypt;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import static org.hibernate.id.SequenceMismatchStrategy.LOG;
//
//public class AdminAuthentication {



//
//    public static Boolean verifyLogin(EmployeeDTO employeeDTO, MasterService masterService) {
//        if (StringUtils.isEmpty(employeeDTO.getPassword()) || StringUtils.isEmpty(employeeDTO.getEmail())) {
//            LOG.error("Cannot process null inputs.");
//            return false;
//        }
//        return checkPassword(employeeDTO.getPassword(),
//                masterService.getDriverByEmail(employeeDTO.getEmail()).getPassword());
//    }
//
//    public static String encodePassword(String password) {
//        String salt = BCrypt.gensalt();
//        return BCrypt.hashpw(password, salt);
//    }
//
//    public static boolean checkPassword(String candidatePassword, String hashedPassword) {
//        return BCrypt.checkpw(candidatePassword, hashedPassword);
//    }
//}
