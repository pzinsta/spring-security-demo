package com.pzinsta.springsecurity.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("john").password("{noop}secret123").roles("EMPLOYEE");
        auth.inMemoryAuthentication().withUser("mary").password("{noop}secret123").roles("MANGER");
        auth.inMemoryAuthentication().withUser("susan").password("{noop}secret123").roles("ADMIN");
    }
}
