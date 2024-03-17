package com.ssg.product_manageapp.service;

import com.ssg.product_manageapp.dto.ProductDTO;

import java.util.List;

public interface ProudctService {
    void register(ProductDTO productDTO);

    List<ProductDTO> listAll();
    ProductDTO listOne(int id);

    void modify(ProductDTO productDTO);

    void delete(int id);

    List<ProductDTO> searchByName(String searchString);


}
