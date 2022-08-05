package model;

import java.time.LocalDate;

public class Customer extends Person{
    private int customerID;
    private String typeOfCustomer;
    private String address;

    public Customer(){

    }

    public Customer(int customerID, String typeOfCustomer, String address) {
        this.customerID = customerID;
        this.typeOfCustomer = typeOfCustomer;
        this.address = address;
    }

    public Customer(String name, LocalDate birthday, String gender, int id, int phoneNumber, String email, int customerID, String typeOfCustomer, String address) {
        super(name, birthday, gender, id, phoneNumber, email);
        this.customerID = customerID;
        this.typeOfCustomer = typeOfCustomer;
        this.address = address;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getTypeOfCustomer() {
        return typeOfCustomer;
    }

    public void setTypeOfCustomer(String typeOfCustomer) {
        this.typeOfCustomer = typeOfCustomer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Khách hàng{" +
                super.toString() +
                ", Mã khách hàng: " + "Customer" + customerID +
                ", Loại khách hàng: " + typeOfCustomer +
                ", địa chỉ: " + address +
                '}';
    }

    @Override
    public String getToCsv() {
        return super.getToCsv() + "," + customerID + "," + typeOfCustomer + "," + address;
    }
}
