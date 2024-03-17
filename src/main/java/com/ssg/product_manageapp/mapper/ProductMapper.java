package com.ssg.product_manageapp.mapper;

import com.ssg.product_manageapp.domain.ProductVO;

import java.util.List;

public interface ProductMapper {

    void insert(ProductVO productVO);

    List<ProductVO> listAll();

    ProductVO listOne(int id);

    void modify(ProductVO productVO);

    void delete(int id);

    List<ProductVO> searchByName(String searchString);
}
