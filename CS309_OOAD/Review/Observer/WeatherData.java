package Observer;

import java.util.ArrayList;

public class WeatherData implements Subject {
    private ArrayList observers;
    private float temp;
    private float humid;

    public WeatherData(){
        observers = new ArrayList();
    }

    @Override
    public void registerObserver(Observer o) {
        observers.add(o);
    }

    @Override
    public void removeObserver(Observer o) {
        int i = observers.indexOf(o);
        if(i>=0) observers.remove(i);
    }

    @Override
    public void notifyObserver() {
        for (int i=0;i<observers.size();i++){
            Observer observer = (Observer) observers.get(i);
            observer.update(this.temp,this.humid);
        }
    }

    public void measurementChange(){
        notifyObserver();
    }

    public void setMeasurement(int temp, int humid){
        this.temp = temp;
        this.humid = humid;
        measurementChange();
    }
}
