package FactoryMethod;

public class ArtDesigner extends personInfo implements ITStaff{
    public int level;

    public ArtDesigner(){
        super("ArtDesigner","123456");
        this.setStartingSalary(7000);
        this.level = (int)(Math.random()*5+1);
        this.setName(this.getUserID()+" "+"ArtDesigner");
    }

    @Override
    public String working() {
        return "Art Design";
    }

    @Override
    public int getSalary() {
        return super.getStartingSalary()+level*1500;
    }

    public String toString(){
        return String.format("%-12sname: %-15s, salary: %5d", working(),this.getName(),this.getSalary());
    }
}
