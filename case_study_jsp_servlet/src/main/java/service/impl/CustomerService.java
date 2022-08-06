package service.impl;

import model.Customer;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> selectAllCustomer() {
        return this.customerRepository.selectAllCustomer();
    }
}
