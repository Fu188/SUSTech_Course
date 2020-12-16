class Rental {
    private final Movie movie = new Movie("movie_title", Movie.REGULAR);

    private int _daysRented;
    public Rental(Movie movie1, DateRange dateRange) {
        movie.setTitle(movie1.getTitle());
        movie.setPriceCode(movie1.getPriceCode());
        _daysRented = (int)((dateRange.getEnd().getTime() - dateRange.getStart().getTime()) / (1000 * 60 * 60 * 24));
    }
    public int getDaysRented() {
        return _daysRented;
    }

    public String getTitle() {
        return movie.getTitle();
    }
    
    public int getPriceCode() {
        return movie.getPriceCode();
    }

    public double getCharge() {
        return movie.getCharge(_daysRented);
    }

    public int getFrequentRenterPoints() {
        return movie.getFrequentRenterPoints(_daysRented);
    }
}
