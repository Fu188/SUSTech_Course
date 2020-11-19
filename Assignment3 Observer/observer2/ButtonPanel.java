package observer2;

import javax.swing.*;
import java.awt.*;

public class ButtonPanel extends JPanel {
    private JButton addRed;
    private JButton addBlue;
    private JButton start;

    public ButtonPanel() {
        setSize(100, 590);
        setLayout(null);
        setBackground(Color.lightGray);

        addRed = new JButton("ADD");
        addRed.setBackground(Color.RED);
        addRed.setFont(new Font("",Font.BOLD,15));
        addRed.setForeground(Color.white);

        addRed.setSize(80, 80);
        addRed.setLocation(10, 20);
        addRed.setVisible(true);

        addBlue = new JButton("ADD");
        addBlue.setBackground(Color.BLUE);
        addBlue.setFont(new Font("",Font.BOLD,15));
        addBlue.setForeground(Color.white);
        addBlue.setSize(80, 80);
        addBlue.setLocation(10, 150);
        addBlue.setVisible(true);

        start = new JButton("START");
        start.setFont(new Font("",Font.BOLD,12));
        start.setSize(80,80);
        start.setLocation(10,300);
        start.setVisible(true);

        this.add(addRed);
        this.add(addBlue);
        this.add(start);
    }

    public JButton getAddRed() {
        return addRed;
    }

    public JButton getAddBlue() {
        return addBlue;
    }

    public JButton getStart() {
        return start;
    }
}
