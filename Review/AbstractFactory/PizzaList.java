package AbstractFactory;

class A_Pizza1 extends Pizza {
    IngredientFactory ingredientFactory;
    public A_Pizza1(IngredientFactory ingredientFactory){
        super();
        name = "A_Pizza1";
        this.ingredientFactory = ingredientFactory;
    }

    @Override
    public void prepare() {
        dough = ingredientFactory.createDough();
    }
}

class A_Pizza2 extends Pizza {
    IngredientFactory ingredientFactory;
    public A_Pizza2(IngredientFactory ingredientFactory){
        super();
        name = "A_Pizza2";
        this.ingredientFactory = ingredientFactory;
    }

    @Override
    public void prepare() {
        dough = ingredientFactory.createDough();
    }
}

class B_Pizza1 extends Pizza {
    IngredientFactory ingredientFactory;
    public B_Pizza1(IngredientFactory ingredientFactory){
        super();
        name = "B_Pizza1";
        this.ingredientFactory = ingredientFactory;
    }

    @Override
    public void prepare() {
        dough = ingredientFactory.createDough();
    }
}

class B_Pizza2 extends Pizza {
    IngredientFactory ingredientFactory;
    public B_Pizza2(IngredientFactory ingredientFactory){
        super();
        name = "B_Pizza2";
        this.ingredientFactory = ingredientFactory;
    }

    @Override
    public void prepare() {
        dough = ingredientFactory.createDough();
    }
}
