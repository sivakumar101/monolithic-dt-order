package com.ewolff.microservice.dtorders;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Dtorders {

	public static void main(String[] args) {
		SpringApplication.run(OrderApp.class, args);
		SpringApplication.run(CustomerApp.class, args);
		SpringApplication.run(CatalogApp.class, args);
	}

}
