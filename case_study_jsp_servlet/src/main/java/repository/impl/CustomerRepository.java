package repository.impl;

import model.Customer;
import repository.ICustomerRepository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELECT_ALL_CUSTOMER = "CALL customer_list();";

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customerList = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_ALL_CUSTOMER);
            callableStatement.executeQuery();
            ResultSet resultSet = callableStatement.getResultSet();
            while (resultSet.next()){
                String name = resultSet.getString("name");
                LocalDate birthDay = LocalDate.parse(resultSet.getString("date_of_birth"));
                String gender = resultSet.getString("gender");
                int idCard = resultSet.getInt("id_card");
                int phone = resultSet.getInt("phone_number");
                String email = resultSet.getString("email");
                int customerId = resultSet.getInt("id");
                String typeCustomer = resultSet.getString("customer_type_id");
                String address = resultSet.getString("address");
                Customer customer = new Customer(name, birthDay, gender, idCard, phone, email, customerId, typeCustomer, address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }
}
