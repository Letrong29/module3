package model;

import java.util.Objects;

public abstract class Facility {
    private String serviceName; // tên dịch vụ
    private double usableArea; // diện tích sử dụng
    private int rentalCosts; // giá thuê
    private int maxiMumNumberOfPeople; // số lượng người tối đa
    private String rentStyle; // kiểu thuê
    private String serviceID; // Mã dịch vụ

    public Facility() {

    }

    public Facility(String serviceName, double usableArea, int rentalCosts, int maxiMumNumberOfPeople, String rentStyle, String serviceID) {
        this.serviceName = serviceName;
        this.usableArea = usableArea;
        this.rentalCosts = rentalCosts;
        this.maxiMumNumberOfPeople = maxiMumNumberOfPeople;
        this.rentStyle = rentStyle;
        this.serviceID = serviceID;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public double getUsableArea() {
        return usableArea;
    }

    public void setUsableArea(double usableArea) {
        this.usableArea = usableArea;
    }

    public int getRentalCosts() {
        return rentalCosts;
    }

    public void setRentalCosts(int rentalCosts) {
        this.rentalCosts = rentalCosts;
    }

    public int getMaxiMumNumberOfPeople() {
        return maxiMumNumberOfPeople;
    }

    public void setMaxiMumNumberOfPeople(int maxiMumNumberOfPeople) {
        this.maxiMumNumberOfPeople = maxiMumNumberOfPeople;
    }

    public String getRentStyle() {
        return rentStyle;
    }

    public void setRentStyle(String rentStyle) {
        this.rentStyle = rentStyle;
    }

    public String getServiceID() {
        return serviceID;
    }

    public void setServiceID(String serviceID) {
        this.serviceID = serviceID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Facility facility = (Facility) o;
        return serviceName.equals(facility.serviceName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(serviceName);
    }

    @Override
    public String toString() {
        return "Tên dịch vụ: '" + serviceName + '\'' +
                ", Diện tích sử dụng: " + usableArea + "m2" +
                ", Giá thuê: " + rentalCosts + "VND" +
                ", Số lượng người tối đa: " + maxiMumNumberOfPeople +
                ", Kiểu thuê: '" + rentStyle +
                ", Mã dịch vụ: " + serviceID;
    }

    public String getToCsv(){
        return serviceName + "," + usableArea + "," + rentalCosts + "," + maxiMumNumberOfPeople + "," + rentStyle + "," + serviceID;
    }
}
