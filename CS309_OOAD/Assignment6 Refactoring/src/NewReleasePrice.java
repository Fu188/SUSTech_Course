public class NewReleasePrice extends Price{
    public int getPriceCode(){
        return Movie.NEW_RELEASE;
    }

    @Override
    public double getCharge(int daysRented) {
        double thisAmount = 0;
        thisAmount += daysRented * 3;
        return thisAmount;
    }

    @Override
    public int getFrequentRenterPoints(int daysRented) {
        int result = 0;
        // add frequent renter points
        result ++;
        // add bonus for a two day new release rental
        if (daysRented > 1) result++;
        return result;
    }
}
