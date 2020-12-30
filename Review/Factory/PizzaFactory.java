package Factory;

class APizzaFactory extends PizzaStore {
    @Override
    Pizza createPizza(String type) {
        if(type.equals("1")){
            return new A_Pizza1();
        }else if(type.equals("2")) {
            return new A_Pizza2();
        }else {
            return null;
        }
    }
}

class BPizzaFactory extends PizzaStore {
    @Override
    Pizza createPizza(String type) {
        if(type.equals("1")){
            return new B_Pizza1();
        }else if(type.equals("2")) {
            return new B_Pizza2();
        }else {
            return null;
        }
    }
}
