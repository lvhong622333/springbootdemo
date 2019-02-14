package com.lvhong;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 
 * @author lvhong
 * @since jdk1.8
 * @version 1.0 springboot2.0.4工程启动类
 * @MapperScan 用于集成mybatis接口，生命周期交由spring管理
 */

@SpringBootApplication
public class SpringBootApp {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootApp.class, args);
	}
	
}
