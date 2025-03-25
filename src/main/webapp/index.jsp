<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp"%>
<c:set var="title" value="Weather Information" />
<%@include file="head.jsp"%>

<form action="WeatherSearch" class="container-sm justify-content-center text-center my-4 py-4" method="get">
    <label for="location">Enter a city:</label>
    <input type="text" id="location" name="location" required>
    <button type="submit" class="btn btn-primary btn-sm mb-1">Get Weather</button>
</form>


    <c:if test="${not empty weatherData}">
        <div class="container-sm text-center">
            <hr class="border border-primary border-3 opacity-75">
            <h2>Weather for ${weatherData.location.name}</h2>
            <p><Strong>Temperature:</Strong> ${weatherData.current.tempF} °F</p>
            <p><Strong>Condition:</Strong> ${weatherData.current.condition.text}</p>
            <p><Strong>Wind:</Strong> ${weatherData.current.windMph} mph from the ${weatherData.current.windDir}</p>
            <p><Strong>Humidity:</Strong> ${weatherData.current.humidity}%</p>
        </div>
    </c:if>


