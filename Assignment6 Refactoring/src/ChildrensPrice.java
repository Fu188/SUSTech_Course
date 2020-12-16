public class ChildrensPrice extends Price{
    public int getPriceCode(){
        return Movie.CHILDRENS;
    }

    @Override
    public double getCharge(int daysRented) {
        double thisAmount = 0;
        thisAmount += 1.5;
        if (daysRented > 3) {
            thisAmount += (daysRented - 3) * 1.5;
        }
        return thisAmount;
    }

}
