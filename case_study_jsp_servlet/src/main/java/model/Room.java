package model;

public class Room extends Facility{
    private String freeServiceIncluded; // dịch vụ miễn phí đi kèm

    public Room(){

    }

    public Room(String freeServiceIncluded) {
        this.freeServiceIncluded = freeServiceIncluded;
    }

    public Room(String serviceName, double usableArea, int rentalCosts, int maxiMumNumberOfPeople, String rentStyle, String serviceID, String freeServiceIncluded) {
        super(serviceName, usableArea, rentalCosts, maxiMumNumberOfPeople, rentStyle, serviceID);
        this.freeServiceIncluded = freeServiceIncluded;
    }

    public String getFreeServiceIncluded() {
        return freeServiceIncluded;
    }

    public void setFreeServiceIncluded(String freeServiceIncluded) {
        this.freeServiceIncluded = freeServiceIncluded;
    }

    @Override
    public String toString() {
        return "Room{" +
                super.toString() +
                ", freeServiceIncluded='" + freeServiceIncluded + '\'' +
                '}';
    }

    @Override
    public String getToCsv() {
        return super.getToCsv() + "," + freeServiceIncluded;
    }
}
