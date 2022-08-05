package model;

public class Villa extends Facility{
    private int roomStandard; //tiêu chuẩn phòng
    private double poolArea; // diện tích hồ bơi
    private int numberOfFloors; // số tầng
    private String descriptionOtherConvenience;

    public Villa() {
    }

    public Villa(int roomStandard, double poolArea, int numberOfFloors, String descriptionOtherConvenience) {
        this.roomStandard = roomStandard;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
    }

    public Villa(String serviceName, double usableArea, int rentalCosts, int maxiMumNumberOfPeople, String rentStyle, String serviceID, int roomStandard, double poolArea, int numberOfFloors, String descriptionOtherConvenience) {
        super(serviceName, usableArea, rentalCosts, maxiMumNumberOfPeople, rentStyle, serviceID);
        this.roomStandard = roomStandard;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
    }

    public String getDescriptionOtherConvenience() {
        return descriptionOtherConvenience;
    }

    public void setDescriptionOtherConvenience(String descriptionOtherConvenience) {
        this.descriptionOtherConvenience = descriptionOtherConvenience;
    }

    public int getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(int roomStandard) {
        this.roomStandard = roomStandard;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    @Override
    public String toString() {
        return "Villa{" +
                super.toString() +
                ", Tiêu chuẩn phòng: " + roomStandard + "sao" +
                ", Diện tích hồ bơi" + poolArea + "m2" +
                ", Số tầng: " + numberOfFloors + "tầng" +
                '}';
    }

    @Override
    public String getToCsv() {
        return super.getToCsv() + "," + roomStandard + "," + poolArea + "," + numberOfFloors;
    }
}
