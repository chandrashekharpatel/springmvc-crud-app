//package com.mvccheck.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//import org.springframework.security.web.firewall.StrictHttpFirewall;
//import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
//
//@Configuration
//@EnableWebSecurity
//public class WebSecurityConfig  {
//
// 
//    protected void configure(HttpSecurity http) throws Exception {
//    	http. 
//      authorizeRequests()
//      .requestMatchers("/login", "/index").permitAll()
//      .anyRequest().authenticated()
//      .and()
//  .formLogin()
//      .loginPage("/login")
//      .defaultSuccessUrl("/user-list")
//      .permitAll()
//      .and()
//  .logout()
//      .logoutSuccessUrl("/login?logout")
//      .permitAll(); 
//    }
//	@Bean
//	public UserDetailsService userDetailsService() {
//		UserDetails user =
//			 User.withDefaultPasswordEncoder()
//				.username("user")
//				.password("password")
//				.roles("USER")
//				.build();
//
//		return new InMemoryUserDetailsManager(user);
//	}
//    }
//
