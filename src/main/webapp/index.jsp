<%@include file="taglib.jsp"%>

<form action="WeatherSearch" method="get">
    <label for="location">Enter a city:</label>
    <input type="text" id="location" name="location" required>
    <button type="submit">Get Weather</button>
</form>

<c:if test="${not empty weatherData}">
    <h2>Weather for ${weatherData.location.name}</h2>
    <p>Temperature: ${weatherData.current.tempF} °F</p>
    <p>Condition: ${weatherData.current.condition.text}</p>
</c:if>
