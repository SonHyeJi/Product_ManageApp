package com.ssg.productmanage.mapper;

import com.ssg.product_manageapp.domain.ProductVO;
import com.ssg.product_manageapp.mapper.ProductMapper;
import lombok.extern.log4j.Log4j2;
import org.apache.logging.log4j.core.config.plugins.validation.constraints.Required;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@ExtendWith(SpringExtension.class)
@Log4j2
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
public class ProductMapperTests {

    @Autowired(required = false)
    private ProductMapper productMapper;

    @Test
    public void testInsert(){
        ProductVO productVO = ProductVO.builder().name("proudct1")
                .price(5000).stock_quantity(100).build();

        productMapper.insert(productVO);
        log.info(productVO);
    }

    @Test
    public void testlistOne(){
        ProductVO vo = productMapper.listOne(3);
        log.info(vo);

    }


    @Test
    public void testmodify(){
        ProductVO vo = ProductVO.builder()
                .name("상품2").price(8000).stock_quantity(200).id(1).build();

        productMapper.modify(vo);
        log.info(vo);
    }

}
