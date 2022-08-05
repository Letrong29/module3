package model;

import java.time.LocalDate;

public class Employee extends Person{
    private int employeeID; // Mã nhân viên
    private String academyLevel; // Trình độ học vấn
    private String position; // Chức vụ
    private int salary; // lương

    public Employee(){

    }

    public Employee(int employeeID, String academyLevel, String position, int salary) {
        this.employeeID = employeeID;
        this.academyLevel = academyLevel;
        this.position = position;
        this.salary = salary;
    }

    public Employee(String name, LocalDate birthday, String gender, int id, int phoneNumber, String email, int employeeID, String academyLevel, String position, int salary) {
        super(name, birthday, gender, id, phoneNumber, email);
        this.employeeID = employeeID;
        this.academyLevel = academyLevel;
        this.position = position;
        this.salary = salary;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getAcademyLevel() {
        return academyLevel;
    }

    public void setAcademyLevel(String academyLevel) {
        this.academyLevel = academyLevel;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Nhân viên{" +
                super.toString() +
                ", Mã nhân viên: " + "Employee" + employeeID +
                ", Trình độ học vấn: " + academyLevel +
                ", Chức vụ: " + position +
                ", Lương: " + salary +
                '}';
    }

    @Override
    public String getToCsv() {
        return super.getToCsv() + "," + employeeID + "," + academyLevel + "," + position + "," + salary;
    }
}
