<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:mybatis="http://mybatis.org/schema/mybatis-spring"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
 http://www.springframework.org/schema/beans/spring-beans.xsd
 http://www.springframework.org/schema/context
 https://www.springframework.org/schema/context/spring-context.xsd
 http://mybatis.org/schema/mybatis-spring http://mybatis.org/schema/mybatis-spring.xsd">

    <bean id="hikariConfig" class="com.zaxxer.hikari.HikariConfig">
        <property name="driverClassName" value="org.mariadb.jdbc.Driver"></property>
        <property name="jdbcUrl" value="jdbc:mariadb://localhost:3307/webdb"></property>
        <property name="username" value="webuser"></property>
        <property name="password" value="webuser"></property>
        <property name="dataSourceProperties">
            <props>
                <prop key="cachePrepStmts">true</prop>
                <prop key="prepStmtCacheSize">250</prop>
                <prop key="prepStmtCacheSqlLimit">2048</prop>
            </props>
        </property>
    </bean>
    <bean id="dataSource" class="com.zaxxer.hikari.HikariDataSource"
          destroy-method="close">
        <constructor-arg ref="hikariConfig" />
    </bean>


    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <property name="dataSource" ref="dataSource" />
        <property name="mapperLocations" value="classpath:/mappers/**/*.xml"></property>
    </bean>

    <mybatis:scan base-package="org.ssg.mvctodo.mapper"></mybatis:scan>

    <context:component-scan base-package="com.ssg.product_manageapp.config"/>
    <context:component-scan base-package="com.ssg.product_manageapp.service"/>


</beans>