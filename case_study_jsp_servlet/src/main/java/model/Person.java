package model;

import java.time.LocalDate;

public abstract class Person {
    private String name; // Học và tên
    private LocalDate birthday; // ngày sinh
    private String gender; // giới tính
    private int id; // CMND
    private int phoneNumber; // số ĐT
    private String email; // Email

    public Person() {

    }

    public Person(String name, LocalDate birthday, String gender, int id, int phoneNumber, String email) {
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.id = id;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String isGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Tên: " + name +
                ", Ngày sinh: " + birthday +
                ", Giới tính: " + gender +
                ", Số CMND: " + id +
                ", Số ĐT: " + phoneNumber +
                ", Email: " + email;
    }

    public String getToCsv() {
        return name + "," + birthday + "," + gender + "," + id + "," + phoneNumber + "," + email;
    }
}
