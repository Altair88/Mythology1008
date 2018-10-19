import javax.swing.plaf.basic.BasicOptionPaneUI;
import java.awt.*;
import java.awt.event.*;
public class p4 extends Frame implements TextListener
{
    static p4 frm=new p4();
    static TextArea txa1;
    static TextArea txa2;
    static Checkbox chris= new Checkbox();
    static Button AA = new Button("clear");
    static Button CC = new Button("Blue");

    public static void main(String args[])
    {
        txa1=new TextArea("",6,10,TextArea.SCROLLBARS_NONE);
        txa2=new TextArea("",6,10,TextArea.SCROLLBARS_NONE);
        frm.setSize(200,150);
        frm.setTitle("Text Event");
        frm.setLayout(new FlowLayout(FlowLayout.CENTER));
        txa1.setBounds(30,30,140,80);
        txa2.setBounds(100,30,140,80);
        AA.setBounds(20,20,200,80);
        txa1.addTextListener(frm);   
        txa2.setEditable(false);      
        frm.add(chris);
        frm.add(txa1);
        frm.add(txa2);
        frm.add(AA);
        frm.add(CC);
        frm.setVisible(true);
        AA.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                txa1.setText("");
                txa2.setText("");
            }
        });
        CC.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                frm.setBackground(Color.BLUE);
            }
        });
    }
    public void textValueChanged(TextEvent e)
    {
        if(chris.getState()==true)// 如果是ckb1被選擇
            txa2.setText(txa1.getText());
        else if(chris.getState()==false)// 如果是ckb2被選擇
            txa2.setText("");

    }
}
