package desktopapplication1;


import java.awt.Dimension;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Student
 */
public class cart extends javax.swing.JFrame {

    /**
     * Creates new form cart
     */
    public cart() {
        initComponents();
        jButton1.doClick();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton15 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jTextField1 = new javax.swing.JTextField();
        jButton7 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        jButton1.setText("jButton1");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("CART");
        setBackground(new java.awt.Color(255, 255, 255));
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14));
        jLabel1.setForeground(new java.awt.Color(51, 51, 51));
        jLabel1.setText("TOTAL AMOUNT");

        jButton15.setBackground(new java.awt.Color(255, 255, 255));
        jButton15.setFont(new java.awt.Font("Comic Sans MS", 1, 18));
        jButton15.setForeground(new java.awt.Color(153, 0, 0));
        jButton15.setText("X");
        jButton15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton15ActionPerformed(evt);
            }
        });

        jButton10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Screenshot (5).png"))); // NOI18N
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });

        jButton8.setFont(new java.awt.Font("Century Schoolbook", 1, 18));
        jButton8.setForeground(new java.awt.Color(255, 255, 255));
        jButton8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Screenshot (3).png"))); // NOI18N
        jButton8.setText("0");
        jButton8.setIconTextGap(-50);
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        jButton9.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/482300283.jpg"))); // NOI18N
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });

        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jTextField1KeyTyped(evt);
            }
        });

        jButton7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Screenshot (4).png"))); // NOI18N
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("PRODUCT");
        jLabel3.setAlignmentX(10.0F);

        jLabel4.setText("PRICE");
        jLabel4.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        jLabel5.setText("QUANTITY");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel1)
                .addGap(24, 24, 24)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 172, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jButton9, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton10, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 408, Short.MAX_VALUE)
                        .addComponent(jButton15))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 289, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(28, 28, 28)
                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 72, Short.MAX_VALUE)
                        .addComponent(jLabel5)
                        .addGap(499, 499, 499))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton15)
                        .addContainerGap())
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jButton10, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jButton9, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 502, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(5, 5, 5)
                                .addComponent(jLabel1))
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))))
        );

        jButton8.setText(""+var.cart[0].getItemCount());

        pack();
    }// </editor-fold>//GEN-END:initComponents
        public JButton[] rem_btn = new javax.swing.JButton[var.cart[0].getItemCount()];
         
        
        
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        
        

    }//GEN-LAST:event_jButton1ActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
JScrollPane scrl_pane = new javax.swing.JScrollPane();
        int i = 0;
        jLabel2.setText("$ "+var.total);
        JPanel[] panel = new javax.swing.JPanel[var.cart[0].getItemCount()];
        JLabel[] name_lbl = new JLabel[var.cart[0].getItemCount()];
        JTextField[] qty_tf=new javax.swing.JTextField[var.cart[0].getItemCount()];
        JButton[] incr_qty_btn=new javax.swing.JButton[var.cart[0].getItemCount()];
        JButton[] decr_qty_btn=new javax.swing.JButton[var.cart[0].getItemCount()];
        JLabel[] img_lbl =new javax.swing.JLabel[var.cart[0].getItemCount()];
        JLabel[] price_lbl = new JLabel[var.cart[0].getItemCount()];
        JButton order_btn =new javax.swing.JButton();
        order_btn.setText("Checkout");
        JPanel main_panel = new javax.swing.JPanel();
        main_panel.setLayout(null);

        try
        {
            Class.forName("java.sql.DriverManager");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ipproject", "root", "123");
            Statement stmt = (Statement) con.createStatement();
            String query;
            ResultSet rs;
            while (i < var.cart[0].getItemCount()) {
                query = "SELECT NAME,PRICE FROM PRODUCT WHERE CODENO=" + Integer.parseInt(var.cart[0].getItem(i)) + ";";
                rs = stmt.executeQuery(query);
                rs.next();
                panel[i] = new JPanel();
                panel[i].setLayout(null);
                rem_btn[i] = new JButton();
                name_lbl[i] = new JLabel();
                price_lbl[i] = new JLabel();
                qty_tf[i]=new JTextField();
                incr_qty_btn[i] = new JButton();
                decr_qty_btn[i] = new JButton();
                img_lbl[i]=new JLabel();
                rem_btn[i].setText("Remove");
                rem_btn[i].setActionCommand("" + i);
                name_lbl[i].setText(rs.getString("name").toUpperCase());
                price_lbl[i].setText("$ "+rs.getInt("price"));
                qty_tf[i].setText(var.cart[1].getItem(i));
                incr_qty_btn[i].setText("+");
                decr_qty_btn[i].setText("-");
                incr_qty_btn[i].setActionCommand(""+i);
                decr_qty_btn[i].setActionCommand(""+i);
                String image_address="/Document_files/product_original ("+var.cart[0].getItem(i)+").png";
                img_lbl[i].setIcon(new javax.swing.ImageIcon(getClass().getResource(image_address)));
                img_lbl[i].setBounds(0,0,300,300);
                name_lbl[i].setBounds(0, 305, 300, 30);
                price_lbl[i].setBounds(320, 0, 50, 30);
                decr_qty_btn[i].setBounds(390,0,50,30);
                qty_tf[i].setBounds(445,0,50,30);
                qty_tf[i].setEditable(false);
                incr_qty_btn[i].setBounds(500,0,50,30);
                rem_btn[i].setBounds(570, 0, 100, 30);
                panel[i].add(rem_btn[i]);
                panel[i].add(name_lbl[i]);
                panel[i].add(price_lbl[i]);
                panel[i].add(decr_qty_btn[i]);
                panel[i].add(qty_tf[i]);
                panel[i].add(incr_qty_btn[i]);
                panel[i].add(img_lbl[i]);
                main_panel.add(panel[i]);
                panel[i].setBounds(0, 340 * i, 700, 340);
                final String name=name_lbl[i].getText();
                final int price=rs.getInt("price");


                rem_btn[i].addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        remove(evt,name,price);
                    }
                });

                incr_qty_btn[i].addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        increase(evt,name,price);
                    }
                });

                decr_qty_btn[i].addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        decrease(evt,name,price);
                    }
                });

                i++;

            }
        }
        catch (Exception e)
        {
            JOptionPane.showMessageDialog(this, e.getMessage());
        }


        main_panel.setPreferredSize(new Dimension(700, i*340));

        scrl_pane.setBounds(10, 90, 700, 500);
        scrl_pane.setViewportView(main_panel);
        this.add(scrl_pane);
        if(i==0)
        {
            order_btn.setBounds(710,100,90,30);
            this.add(order_btn);
            order_btn.setEnabled(false);
        }
        else {
            order_btn.setBounds(710,100,90,30);
            this.add(order_btn);
            order_btn.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    order(evt);
                }
            });
        }
        this.repaint();
                // TODO add your handling code here:
    }//GEN-LAST:event_formWindowOpened

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
     // TODO add your handling code here:
    }//GEN-LAST:event_formWindowClosed

    private void jButton15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton15ActionPerformed
        this.dispose();
        new exit().setVisible(true);       // TODO add your handling code here:
}//GEN-LAST:event_jButton15ActionPerformed

    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton10ActionPerformed
        new Accountinfo().setVisible(true);
        this.dispose();        // TODO add your handling code here:
}//GEN-LAST:event_jButton10ActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        new cart().setVisible(true);
        this.dispose();// TODO add your handling code here:
}//GEN-LAST:event_jButton8ActionPerformed

    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        var.srch=jTextField1.getText();
        new search().setVisible(true);
        this.dispose();
}//GEN-LAST:event_jButton9ActionPerformed

    private void jTextField1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyTyped
        // TODO add your handling code here:
}//GEN-LAST:event_jTextField1KeyTyped

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
this.dispose();
new buttoncategories().setVisible(true);        // TODO add your handling code here:
}//GEN-LAST:event_jButton7ActionPerformed
private void remove(java.awt.event.ActionEvent evt,String name,int price)
    {
        int i=Integer.parseInt(((JButton)evt.getSource()).getActionCommand());
        var.total=var.total-(Integer.parseInt(var.cart[1].getItem(i))*price);
        var.cart[0].remove(i);
        var.cart[1].remove(i);
        JOptionPane.showMessageDialog(this,name+" removed from cart.");
        this.dispose();
        new cart().setVisible(true);
        
    }
private void increase(java.awt.event.ActionEvent evt,String name,int price)
    {
        int i=Integer.parseInt(((JButton)evt.getSource()).getActionCommand());
        var.cart[1].replaceItem(Integer.parseInt(var.cart[1].getItem(i))+1+"", i);
        var.total=var.total+price;
        this.dispose();
        new cart().setVisible(true);
        JOptionPane.showMessageDialog(this,"Quantity increased for "+name+" \nNew quantity="+var.cart[1].getItem(i));
    }
private void decrease(java.awt.event.ActionEvent evt,String name,int price)
    {
        int i=Integer.parseInt(((JButton)evt.getSource()).getActionCommand());
        var.cart[1].replaceItem(Integer.parseInt(var.cart[1].getItem(i))-1+"", i);
        var.total=var.total-price;
        if(Integer.parseInt(var.cart[1].getItem(i))==0)
        {
            
            rem_btn[i].doClick();
        }
        else
        {
           
           this.dispose();
           new cart().setVisible(true);
           JOptionPane.showMessageDialog(this,"Quantity decreased for "+name+" \nNew quantity="+var.cart[1].getItem(i));
        }
        

        
        
    }
private void order(java.awt.event.ActionEvent evt)
    {
      this.dispose();
      new payment_options().setVisible(true);
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(cart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(cart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(cart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(cart.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new cart().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}