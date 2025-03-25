package persistence;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.weatherapi.Response;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

public class WeatherDao {
    private static final String API_KEY = "6dbbd747934e44bf84312529252303"; // Replace with your actual API key
    private static final String BASE_URL = "http://api.weatherapi.com/v1/current.json";

    public Response getWeather(String location) {
        Client client = ClientBuilder.newClient();
        WebTarget target = client.target(BASE_URL)
                .queryParam("key", API_KEY)
                .queryParam("q", location);

        String responseJson = target.request(MediaType.APPLICATION_JSON).get(String.class);

        ObjectMapper mapper = new ObjectMapper();
        Response weatherResponse = null;
        try {
            weatherResponse = mapper.readValue(responseJson, Response.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace(); // Handle this properly in production
        }

        return weatherResponse;
    }
}
