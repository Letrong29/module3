package service.impl;

import model.Customer;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    private CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> selectAllCustomer() {
        return this.customerRepository.selectAllCustomer();
    }

    @Override
    public void addNewCustomer(Customer customer) {
        this.customerRepository.addNewCustomer(customer);
    }


    @Override
    public void deleteCustomer(int id) {
        this.customerRepository.deleteCustomer(id);
    }

    @Override
    public Customer findCustomerById(int idSearch) {
        return this.customerRepository.findCustomerById(idSearch);
    }

    @Override
    public void editCustomer(Customer customer) {
        this.customerRepository.editCustomer(customer);
    }

    @Override
    public List<Customer> searchCustomer(String keySearch) {
        return this.customerRepository.searchCustomer(keySearch);
    }


}
