package model;

public class House extends Facility{
    private int roomStandard; // tiêu chuẩn phòng
    private int numberOfFloors; // số tầng

    public House(){

    }

    public House(int roomStandard, int numberOfFloors) {
        this.roomStandard = roomStandard;
        this.numberOfFloors = numberOfFloors;
    }

    public House(String serviceName, double usableArea, int rentalCosts, int maxiMumNumberOfPeople, String rentStyle, String serviceID, int roomStandard, int numberOfFloors) {
        super(serviceName, usableArea, rentalCosts, maxiMumNumberOfPeople, rentStyle, serviceID);
        this.roomStandard = roomStandard;
        this.numberOfFloors = numberOfFloors;
    }

    public int getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(int roomStandard)    {
        this.roomStandard = roomStandard;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    @Override
    public String toString() {
        return "House{" +
                super.toString() +
                ", Tiêu chuẩn phòng: " + roomStandard + "sao" +
                ", Số tầng: " + numberOfFloors +
                '}';
    }

    @Override
    public String getToCsv() {
        return super.getToCsv() + "," + roomStandard + "," + numberOfFloors;
    }
}
