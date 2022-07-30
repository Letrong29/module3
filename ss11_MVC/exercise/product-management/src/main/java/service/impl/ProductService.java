package service.impl;

import model.Product;
import service.IProductService;

import java.util.*;

public class ProductService implements IProductService {
    private static Map<Integer,Product> productMap = new HashMap<>();

    static {
        productMap.put(1,new Product(1, "Iphone 8","Apple", 5000, "new", ""));
        productMap.put(2,new Product(2, "Iphone x","Apple", 5000, "new", ""));
        productMap.put(3,new Product(3, "Iphone 11","Apple", 5000, "new", ""));
        productMap.put(4,new Product(4, "Iphone 12","Apple", 5000, "new", ""));
        productMap.put(5,new Product(5, "Iphone 13","Apple", 5000, "new", ""));
    }

    @Override
    public List<Product> display() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(),product);
    }

    @Override
    public Product findByID(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void delete(int id) {
        productMap.remove(id);
    }

    @Override
    public Product seeDetails() {
        return null;
    }

    @Override
    public List<Product> findByName(String name, List<Product> products) {
        List<Product> productList = new ArrayList<>();
        for (Product product : products) {
            if (name.toLowerCase().contains(product.getName().toLowerCase())) {
                productList.add(product);
                break;
            }
        }
        return  productList;
    }
}
