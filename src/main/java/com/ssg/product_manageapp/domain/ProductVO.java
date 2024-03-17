package com.ssg.product_manageapp.domain;

import lombok.*;

@Getter
@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ProductVO {
    private int id;
    private String name;
    private int price;
    private int stock_quantity;
}
