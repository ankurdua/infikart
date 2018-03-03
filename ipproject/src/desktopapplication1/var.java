package desktopapplication1;


import java.awt.List;
import java.sql.*;
import javax.swing.JOptionPane;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Student
 */
public class var {
    public static String srch="";
    public static int total=0;
    public static String uname="";
    public static int update_order_no;
    public static String address;
    public static int product_info_code;
    public static String pmt_opt;
    public static String card_no;
    public static String card_pin;
    public static List[] cart=new List[2];
    public static List[] view_order=new List[2];
    public static int pmnt_prcs_stat;
    public static int view_order_code;
    
    public static void main(String args[])
    {
       cart[0]=new List();
       cart[1]=new List();
       view_order[0]=new List();
       view_order[1]=new List();
       new welcome().setVisible(true);
    }

    public static boolean cancel_order(int order_no)
    {
        try
    {
        Class.forName("java.sql.DriverManager");
        Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ipproject","root", "123");
        Statement stmt = (Statement) con.createStatement();
        String query="UPDATE ORDERS SET ORDER_STATUS='CANCELLED' WHERE ORDER_NO="+order_no+";";
        stmt.executeUpdate(query);
        query="select pmt_opt,amount,card_no from orders where order_no="+order_no+";";


        ResultSet rs=stmt.executeQuery(query);
        rs.next();
        int amount=rs.getInt(2);
        if(rs.getString(1).equals("DEBIT CARD"))
        {
            query="update dbt_card set amt=amt+"+rs.getInt(2)+" where card_no='"+rs.getString(3)+"';";
            stmt.executeUpdate(query);
            query="select max(transaction_no),balance from balancesheet where transaction_no=(select max(transaction_no) from balancesheet);";
                        rs=stmt.executeQuery(query);
                        rs.next();
                        int balance=rs.getInt(2);
                        int transaction_no=rs.getInt(1)+1;
                        query="insert into balancesheet values ("+transaction_no+",'debit',now(),"+amount+","+(balance-amount)+");";
                        stmt.executeUpdate(query);
        }
        else if(rs.getString(1).equals("CREDIT CARD"))
        {
            query="update crdt_card set rem_crdt=rem_crdt+"+rs.getInt(2)+" where card_no='"+rs.getString(3)+"';";
            stmt.executeUpdate(query);
                query="select max(transaction_no),balance from balancesheet where transaction_no=(select max(transaction_no) from balancesheet);";
                        rs=stmt.executeQuery(query);
                        rs.next();
                        int balance=rs.getInt(2);
                        int transaction_no=rs.getInt(1)+1;
                        query="insert into balancesheet values ("+transaction_no+",'debit',now(),"+amount+","+(balance-amount)+");";
                        stmt.executeUpdate(query);

        }
        return true;
    }
    catch(Exception e)
    {
        JOptionPane.showMessageDialog(null,e.getMessage());
        return false;
    }
        
    }

    public static boolean process_payment()
    {
        
        
            if(pmt_opt.equals("DEBIT CARD"))
            {
                try {
                    Class.forName("java.sql.DriverManager");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ipproject", "root", "123");
                    Statement stmt = (Statement) con.createStatement();
                    String query ="SELECT AMT FROM DBT_CARD WHERE CARD_NO='"+card_no+"' AND PIN='"+card_pin+"';" ;
                    ResultSet rs = stmt.executeQuery(query);
                    if(!rs.next())
                    {
                        pmnt_prcs_stat=0;
                        return false;
                    }
                    else if(rs.getDouble("AMT")<total)
                    {
                        pmnt_prcs_stat=1;
                        return false;
                    }
                    else
                    {
                        query ="UPDATE DBT_CARD SET AMT='"+(rs.getDouble("AMT")-total)+"' WHERE CARD_NO='"+card_no+"';" ;
                        stmt.executeUpdate(query);
                        query="select max(transaction_no),balance from balancesheet where transaction_no=(select max(transaction_no) from balancesheet);";
                        rs=stmt.executeQuery(query);
                        rs.next();
                        int balance=rs.getInt(2);
                        int transaction_no=rs.getInt(1)+1;
                        query="insert into balancesheet values ("+transaction_no+",'credit',now(),"+total+","+(balance+total)+");";
                        stmt.executeUpdate(query);

                        return true;
                    }

                }
                catch(Exception e)
                {
                    JOptionPane.showMessageDialog(null,e.getMessage());
                    return false;
                }
            }
            else if(pmt_opt.equals("CREDIT CARD"))
            {
                  try {
                    Class.forName("java.sql.DriverManager");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ipproject", "root", "123");
                    Statement stmt = (Statement) con.createStatement();
                    String query ="SELECT REM_CRDT FROM CRDT_CARD WHERE CARD_NO='"+card_no+"' AND PIN='"+card_pin+"';" ;
                    ResultSet rs = stmt.executeQuery(query);
                    if(!rs.next())
                    {
                        pmnt_prcs_stat=0;
                        return false;
                    }
                    else if(rs.getDouble("REM_CRDT")<total)
                    {
                        pmnt_prcs_stat=2;
                        return false;
                    }
                    else
                    {
                        query ="UPDATE CRDT_CARD SET REM_CRDT='"+(rs.getDouble("REM_CRDT")-total)+"' WHERE CARD_NO='"+card_no+"';" ;
                        stmt.executeUpdate(query);
                        query="select max(transaction_no),balance from balancesheet where transaction_no=(select max(transaction_no) from balancesheet);";
                        rs=stmt.executeQuery(query);
                        rs.next();
                        int balance=rs.getInt(2);
                        int transaction_no=rs.getInt(1)+1;
                        query="insert into balancesheet values ("+transaction_no+",'credit',now(),"+total+","+(balance+total)+");";
                        stmt.executeUpdate(query);
                        return true;
                    }

                }
                catch(Exception e)
                {
                    JOptionPane.showMessageDialog(null,e.getMessage());
                    return false;
                }
            }

            else
            {
                return true;
            }


        
    }

    
}
