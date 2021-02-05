package FactoryMethod;

public class TesterFactory implements ITStaffFactoryInterface{
    @Override
    public ITStaff createITStaff() {
        return new Tester();
    }
}
