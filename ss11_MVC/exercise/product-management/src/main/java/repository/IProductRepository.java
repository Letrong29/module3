package repository;

import model.Product;

public interface IProductRepository {
    void display();

    void creat();

    void update(int id);

    void delete(int id);

    Product seeDetails();

    Product findByName(String name);
}
