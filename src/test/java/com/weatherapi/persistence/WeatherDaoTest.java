package com.weatherapi.persistence;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class WeatherDaoTest {

    @Test
    public void getResponseSuccess() {
        WeatherDao dao = new WeatherDao();
        assertEquals("Sun Prairie", dao.getWeather("53590").getLocation().getName());
    }
}