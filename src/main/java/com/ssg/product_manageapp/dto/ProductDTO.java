package com.ssg.product_manageapp.dto;

import lombok.*;

@ToString
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {

    private int id;
    private String name;
    private int price;
    private int stock_quantity;
}
