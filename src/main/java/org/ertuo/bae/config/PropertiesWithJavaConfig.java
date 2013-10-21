package org.ertuo.bae.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-10-21
 * Time: 下午2:52
 * To change this template use File | Settings | File Templates.
 */
@Configuration
@PropertySource("classpath:db.properties")
public class PropertiesWithJavaConfig {

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
}
