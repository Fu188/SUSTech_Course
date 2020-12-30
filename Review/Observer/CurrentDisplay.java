package Observer;

public class CurrentDisplay implements Display, Observer{
    private float temp;
    private float humid;
    private Subject weatherData;

    public CurrentDisplay(Subject weatherData){
        this.weatherData =weatherData;
        weatherData.registerObserver(this);
    }

    @Override
    public void display() {
        System.out.println("Temp: "+temp + "  Humid: "+humid);
    }

    @Override
    public void update(float temp, float humid) {
        this.temp = temp;
        this.humid = humid;
        display();
    }
}
