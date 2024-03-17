package com.ssg.product_manageapp.service;

import com.ssg.product_manageapp.domain.ProductVO;
import com.ssg.product_manageapp.dto.ProductDTO;
import com.ssg.product_manageapp.mapper.ProductMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class ProductServiceImpl implements ProudctService{

    private final ModelMapper modelMapper;
    private final ProductMapper productMapper;

    @Override
    public void register(ProductDTO productDTO){
        ProductVO productVO = modelMapper.map(productDTO, ProductVO.class);
        productMapper.insert(productVO);
    }

    @Override
    public List<ProductDTO> listAll() {

        List<ProductDTO> productDTOList = productMapper.listAll()
                .stream().map(vo -> modelMapper.map(vo, ProductDTO.class)).collect(Collectors.toList());

        return productDTOList;
    }

    @Override
    public ProductDTO listOne(int id) {
        ProductDTO productDTO = modelMapper.map(productMapper.listOne(id),ProductDTO.class);

        return productDTO;
    }

    @Override
    public void modify(ProductDTO productDTO) {

        log.info("service modify");
        log.info(productDTO);
        ProductVO productVO = modelMapper.map(productDTO,ProductVO.class);
        productMapper.modify(productVO);

        log.info(productVO);

    }

    @Override
    public void delete(int id) {

        productMapper.delete(id);
    }

    @Override
    public List<ProductDTO> searchByName(String searchString) {
        List<ProductDTO> productDTOList = productMapper.searchByName(searchString)
                .stream().map(vo -> modelMapper.map(vo, ProductDTO.class))
                .collect(Collectors.toList());
        return productDTOList;
    }


}
