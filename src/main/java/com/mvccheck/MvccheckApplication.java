package com.mvccheck;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(scanBasePackages = "com.mvccheck")
public class MvccheckApplication extends SpringBootServletInitializer {

   
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(MvccheckApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(MvccheckApplication.class);
    }
    
}
