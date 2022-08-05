package model;

public class Contract {
    private int contractID; // mã hợp đồng
    private Booking bookingID; // mã booking
    private int deposit; // số tiền đặt cọc
    private int totalBill; // tổng bill
    private Customer customerID; // mã khách hàng

    public Contract(){

    }

    public Contract(int contractID, Booking bookingID, int deposit, int totalBill, Customer customerID) {
        this.contractID = contractID;
        this.bookingID = bookingID;
        this.deposit = deposit;
        this.totalBill = totalBill;
        this.customerID = customerID;
    }

    public int getContractID() {
        return contractID;
    }

    public void setContractID(int contractID) {
        this.contractID = contractID;
    }

    public Booking getBookingID() {
        return bookingID;
    }

    public void setBookingID(Booking bookingID) {
        this.bookingID = bookingID;
    }

    public int getDeposit() {
        return deposit;
    }

    public void setDeposit(int deposit) {
        this.deposit = deposit;
    }

    public int getTotalBill() {
        return totalBill;
    }

    public void setTotalBill(int totalBill) {
        this.totalBill = totalBill;
    }

    public Customer getCustomerID() {
        return customerID;
    }

    public void setCustomerID(Customer customerID) {
        this.customerID = customerID;
    }

    @Override
    public String toString() {
        return "Hợp đông{" +
                "Mã hợp đồng: " + contractID +
                ", Mã booking: " + bookingID.getBookingID() +
                ", Tiền đặt cọc: " + deposit +
                ", Tổng bill: " + totalBill +
                ", Mã khách hàng: " + customerID.getCustomerID() +
                '}';
    }

    public String getToCsv(){
        return contractID + "," + bookingID.getBookingID() + "," + deposit + "," + totalBill + "," + customerID.getCustomerID();
    }
}
