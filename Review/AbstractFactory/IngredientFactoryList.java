package AbstractFactory;

class nice_IngredientFactory implements IngredientFactory{
    @Override
    public String createDough() {
        return "nice";
    }
}

class bad_IngredientFactory implements IngredientFactory{
    @Override
    public String createDough() {
        return "bad";
    }
}
