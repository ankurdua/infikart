/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * order_history.java
 *
 * Created on Jan 23, 2016, 5:11:10 PM
 */

package desktopapplication1;

import java.awt.Dimension;
import javax.swing.JButton;
import javax.swing.JPanel;
import java.sql.*;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
/**
 *
 * @author Administrator
 */
public class order_history extends javax.swing.JFrame {

    /** Creates new form order_history */
    public order_history() {
        initComponents();
        jButton1.doClick();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        jButton1.setText("jButton1");
        jButton1.setName("jButton1"); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("YOUR ORDERS");
        setBackground(new java.awt.Color(255, 255, 255));
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel1.setText("ORDER NO.");
        jLabel1.setName("jLabel1"); // NOI18N

        jLabel2.setText("DATE");
        jLabel2.setName("jLabel2"); // NOI18N

        jLabel3.setText("AMOUNT");
        jLabel3.setName("jLabel3"); // NOI18N

        jLabel4.setText("ORDER STATUS");
        jLabel4.setName("jLabel4"); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel2)
                .addGap(57, 57, 57)
                .addComponent(jLabel3)
                .addGap(73, 73, 73)
                .addComponent(jLabel4)
                .addContainerGap(518, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4))
                .addContainerGap(544, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
         // TODO add your handling code here:
    }//GEN-LAST:event_formWindowClosed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
    String uname = var.uname;
        JPanel main_panel = new javax.swing.JPanel();
        main_panel.setLayout(null);
        try
        {
            Class.forName("java.sql.DriverManager");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ipproject", "root", "123");
            Statement stmt = (Statement) con.createStatement();
            String query = "SELECT * FROM ORDERS WHERE USER='" + uname + "';";
            ResultSet rs = stmt.executeQuery(query);

            int number = 0;
            while (rs.next())
            {

                number++;
            }
            JPanel[] panels = new JPanel[number];

            JButton[] cancel_buttons = new JButton[number];
            JButton[] view_buttons = new JButton[number];
            JLabel[] order_no = new JLabel[number];
            JLabel[] amount = new JLabel[number];
            JLabel[] order_date = new JLabel[number];
            JLabel[] order_status = new JLabel[number];
            rs.first();
            int i = 0;
            while (i < number)
            {
                panels[i] = new JPanel();
                panels[i].setLayout(null);
                cancel_buttons[i] = new JButton();
                cancel_buttons[i].setText("CANCEL ORDER");
                cancel_buttons[i].setActionCommand("" + rs.getInt("order_no"));
                view_buttons[i] = new JButton();
                view_buttons[i].setText("VIEW ORDER CONTENTS");
                view_buttons[i].setActionCommand("" + rs.getInt("order_no"));
                order_no[i] = new JLabel();
                amount[i] = new JLabel();
                order_date[i] = new JLabel();
                order_status[i] = new JLabel();
                order_no[i].setText("" + rs.getInt("order_no"));
                amount[i].setText("$ " + rs.getInt("amount"));
                order_date[i].setText("" + rs.getDate("date"));
                order_status[i].setText(rs.getString("order_status"));
                order_no[i].setBounds(0, 0, 60, 30);
                order_date[i].setBounds(70, 0, 100, 30);
                amount[i].setBounds(180, 0, 100, 30);
                order_status[i].setBounds(290, 0, 100, 30);
                view_buttons[i].setBounds(400, 0, 200, 30);
                cancel_buttons[i].setBounds(610, 0, 150, 30);
                panels[i].add(order_no[i]);
                panels[i].add(amount[i]);
                panels[i].add(order_date[i]);
                panels[i].add(order_status[i]);
                panels[i].add(view_buttons[i]);
                panels[i].add(cancel_buttons[i]);
                if ((rs.getString("order_status").equals("CANCELLED") || rs.getString("order_status").equals("DELIVERED")))
                {
                    cancel_buttons[i].setEnabled(false);
                }
                main_panel.add(panels[i]);
                panels[i].setBounds(10, 40 * i, 762, 30);
                main_panel.revalidate();


                cancel_buttons[i].addActionListener(new java.awt.event.ActionListener() {

                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        cancel_order(evt);
                    }
                });

                view_buttons[i].addActionListener(new java.awt.event.ActionListener() {

                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        view_order(evt);
                    }
                });


                i++;
                rs.next();


            }


            main_panel.setPreferredSize(new Dimension(775, i * 40 + 100));
            JScrollPane scroll_pane = new javax.swing.JScrollPane();
            scroll_pane.setBounds(10, 60, 790, 500);
            scroll_pane.setViewportView(main_panel);
            this.add(scroll_pane);
            this.invalidate();
            this.validate();

        }
        catch (Exception e)
        {
            JOptionPane.showMessageDialog(this, e.getMessage());
        }     // TODO add your handling code here:
    }//GEN-LAST:event_formWindowOpened
private void cancel_order(java.awt.event.ActionEvent evt)
{
    int order_no=Integer.parseInt(((JButton)evt.getSource()).getActionCommand());
    var.cancel_order(order_no);
    this.dispose();
    new order_history().setVisible(true);
}
private void view_order(java.awt.event.ActionEvent evt)
{
    int order_no=Integer.parseInt(((JButton)evt.getSource()).getActionCommand());
    var.view_order_code=order_no;
    new view_order().setVisible(true);
}
    /**
    * @param args the command line arguments
    */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new order_history().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    // End of variables declaration//GEN-END:variables

}
