package original;

import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.ArrayList;
import java.util.List;

public class MainPanel extends JPanel implements KeyListener {
    private List<Ball> paintingBallList = new ArrayList<>();
    private boolean start = false;
    private int score;
    private int redCount;
    private Ball greenBall;

    public MainPanel() {
        setLayout(null);
        setSize(590, 590);
        setBackground(Color.white);
        addKeyListener(this);
        setFocusable(true);

        this.score = 0;
        this.redCount = 0;

        Timer t = new Timer(50, e -> moveBalls());
        t.start();

    }

    private void addScore(int increment) {
        this.score += increment;
    }

    public void startGame() {
        start = true;
        this.greenBall.setVisible(true);
    }

    public void setGreenBall(Ball greenBall) {
        this.greenBall = greenBall;
        this.greenBall.setVisible(false);
        add(greenBall);
    }

    public void moveBalls() {
        paintingBallList.forEach(Ball::move);
        if (start) {
            greenBall.move();
            paintingBallList.forEach(b -> {
                if (b.isIntersect(greenBall) && b.isVisible()) {
                    b.setVisible(false);
                    if (b.getColor() == Color.RED) {
                        this.addScore(10);
                        redCount--;
                        if (redCount == 0) {
                            start = false;
                            greenBall.setVisible(false);
                        }
                    }
                    if (b.getColor() == Color.BLUE) {
                        this.addScore(-10);
                    }
                }
            });
        }
        repaint();
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        if (start) {
            g.setFont(new Font("Arial", Font.PLAIN, 30));
            g.setColor(Color.BLACK);
            g.drawString("Score: " + score, 20, 40);

            this.setBackground(Color.WHITE);
        }

        if (redCount == 0) {
            g.setColor(Color.BLACK);
            g.setFont(new Font("Arial", Font.BOLD, 45));
            g.drawString("Game Over!", 200, 200);
            g.setFont(new Font("", Font.BOLD, 40));
            g.drawString("Your score is " + score, 190, 280);
        }
    }


    public void addBallToPanel(Ball ball) {
        if (ball.getColor() == Color.RED)
            redCount++;
        paintingBallList.add(ball);
        this.add(ball);
    }

    public boolean isStart() {
        return start;
    }

    @Override
    public void keyTyped(KeyEvent keyEvent) {

    }

    @Override
    public void keyPressed(KeyEvent keyEvent) {
        char keyChar = keyEvent.getKeyChar();


        if (keyChar == 'a' || keyChar == 'd') {
            paintingBallList.stream().filter(b -> b.getColor() == Color.RED).forEach(
                    redBall -> {
                        int temp = redBall.getXSpeed();
                        redBall.setXSpeed(redBall.getYSpeed());
                        redBall.setYSpeed(temp);
                    }
            );
        }

        if (start) {
            switch (keyChar) {
                case 'a':
                    greenBall.setXSpeed(Math.abs(greenBall.getXSpeed()) * -1);
                    break;
                case 'd':
                    greenBall.setXSpeed(Math.abs(greenBall.getXSpeed()));
                    break;
                case 'w':
                    greenBall.setYSpeed(Math.abs(greenBall.getYSpeed()) * -1);
                    break;
                case 's':
                    greenBall.setYSpeed(Math.abs(greenBall.getYSpeed()));
                    break;
            }
        }

        paintingBallList.stream().filter(b -> b.getColor() == Color.blue).forEach(
                blueBall -> {
                    blueBall.setXSpeed(-1 * blueBall.getXSpeed());
                    blueBall.setYSpeed(-1 * blueBall.getYSpeed());
                }
        );

    }

    @Override
    public void keyReleased(KeyEvent keyEvent) {

    }
}
