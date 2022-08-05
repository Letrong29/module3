package model;

import java.time.LocalDate;

public class Booking {
    private int bookingID;
    private LocalDate startDay;
    private LocalDate endDay;
    private Customer getCustomerID;
    private Facility nameService;
    private Facility serviceID;

    public Booking() {

    }

    public Booking(int bookingCode, LocalDate startDay, LocalDate endDay, Customer employeeID, Facility nameService, Facility serviceID) {
        this.bookingID = bookingCode;
        this.startDay = startDay;
        this.endDay = endDay;
        this.getCustomerID = employeeID;
        this.nameService = nameService;
        this.serviceID = serviceID;
    }

    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public LocalDate getStartDay() {
        return startDay;
    }

    public void setStartDay(LocalDate startDay) {
        this.startDay = startDay;
    }

    public LocalDate getEndDay() {
        return endDay;
    }

    public void setEndDay(LocalDate endDay) {
        this.endDay = endDay;
    }

    public Customer getEmployeeID() {
        return getCustomerID;
    }

    public void setEmployeeID(Customer employeeID) {
        this.getCustomerID = employeeID;
    }

    public Facility getNameService() {
        return nameService;
    }

    public void setNameService(Facility nameService) {
        this.nameService = nameService;
    }

    public Facility getServiceID() {
        return serviceID;
    }

    public void setServiceID(Facility serviceID) {
        this.serviceID = serviceID;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "Mã booking" + bookingID +
                ", Ngày bắt đầu: " + startDay +
                ", Ngày kết thúc: " + endDay +
                ", Mã khách hàng: " + getCustomerID.getCustomerID() +
                ", Tên dịch vụ: " + nameService.getServiceName() +
                ", Mã dịch vụ: " + serviceID.getServiceID() +
                '}';
    }

    public String getToCsv(){
        return bookingID + "," + startDay + "," + endDay + "," + getCustomerID.getCustomerID() + "," + nameService.getServiceName() + "," + serviceID.getServiceID();
    }
}
