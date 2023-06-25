package com.nxg;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.nxg.mapper") ////注意需要导入 import tk.mybatis.spring.annotation.MapperScan;
public class FunBillTkApplication {

    public static void main(String[] args) {
        SpringApplication.run(FunBillTkApplication.class, args);
    }

}
