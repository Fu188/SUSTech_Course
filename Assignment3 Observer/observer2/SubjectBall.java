package observer2;

import java.awt.*;

public abstract class SubjectBall extends Ball{
    public SubjectBall(Color color, int xSpeed, int ySpeed, int ballSize) {
        super(color, xSpeed, ySpeed, ballSize);
    }

    public abstract boolean isCollided(Ball ball, double dis);
}
