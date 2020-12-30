package Observer;

public class Test {
    public static void main(String[] args) {
        WeatherData weatherData = new WeatherData();
        CurrentDisplay currentDisplay = new CurrentDisplay(weatherData);
        weatherData.setMeasurement(10,8);
        weatherData.setMeasurement(20,1);
    }
}
