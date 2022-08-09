package service;

import model.Customer;

import java.util.List;
import java.util.Map;

public interface ICustomerService {

    List<Customer> selectAllCustomer();

    void addNewCustomer(Customer customer);

    void deleteCustomer(int id);

    Customer findCustomerById(int idSearch);

    void editCustomer(Customer customer);

    List<Customer> searchCustomer(String keySearch);


}
