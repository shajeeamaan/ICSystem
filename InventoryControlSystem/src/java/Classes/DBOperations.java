/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import com.mysql.jdbc.Messages;
import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Rockit Bat
 */
public class DBOperations {

    public int logmode;
    public String mod;
    public String url = "jdbc:mysql://localhost:3306/inventory";
    public String username = "root";
    public String password = "";
    public Connection con = null;
    public PreparedStatement pst = null;
    public Statement st = null;
    public ResultSet rs = null;
    private String driver = "com.mysql.jdbc.Driver";

    public void connectToDb() {
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, "root", "");
            st = (Statement) conn.createStatement();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }

    }

    public boolean addUser(String fname, String lname, String acc, String tell, String uname, String eml, String psw, int id) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "INSERT INTO login VALUES(?,?,?,?,?,?,?,?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, acc);
            pst.setString(4, tell);
            pst.setString(5, uname);
            pst.setString(6, eml);
            pst.setString(7, psw);
            pst.setInt(8, id);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public int login(String eml, String psw) {
        String post;
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "SELECT * FROM login WHERE eml=? AND psw=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, eml);
            pst.setString(2, psw);
            rs = pst.executeQuery();
            if (rs.next()) {
                post = rs.getString("access");
                switch (post) {
                    case "Admin":
                        return 1;
                    case "Cashier":
                        return 2;
                }
            }
            return 3;
        } catch (Exception e) {
            System.out.println(e);
            return 0;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public String itemName(int id) {
        String name;
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "SELECT * FROM item WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                name = rs.getString("itmname");
                return name;
            }
            return null;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public int itemPrice(int id) {
        int price;
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "SELECT * FROM item WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                price = rs.getInt("itemsellprice");
                return price;
            }
            return 0;
        } catch (Exception e) {
            System.out.println(e);
            return 0;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean addTempItem(String itmname, int id, int qty, int price) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "INSERT INTO tempsell VALUES(?,?,?,?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            pst.setString(2, itmname);
            pst.setInt(3, price);
            pst.setInt(4, qty);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean addSell(String itmname, int id, int qty, int price) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "INSERT INTO sell VALUES(?,?,?,?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            pst.setString(2, itmname);
            pst.setInt(3, price);
            pst.setInt(4, qty);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public int itemQty(int id) {
        int qty;
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "SELECT * FROM item WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                qty = rs.getInt("qty");
                return qty;
            }
            return 0;
        } catch (Exception e) {
            System.out.println(e);
            return 0;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean updateQty(int qty, int id) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "UPDATE item SET qty='" + qty + "' WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean delTemp() {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "DELETE FROM tempsell";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.execute();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean checkEmlPsw(String eml, String psw) {
        String teml;
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "SELECT * FROM login WHERE eml=? AND psw=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, eml);
            pst.setString(2, psw);
            rs = pst.executeQuery();
            if (rs.next()) {
                teml = rs.getString("eml");
                if (teml == null ? eml == null : teml.equals(eml)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean pswUpdate(String eml, String psw) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "UPDATE login SET psw='" + psw + "' WHERE eml=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, eml);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean addItem(String itmname, int buy, int sell, int qty, String cat, String exp, String supname, String suptell, String supeml, int id) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "INSERT INTO item VALUES(?,?,?,?,?,?,?,?,?,?)";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setString(1, itmname);
            pst.setInt(2, buy);
            pst.setInt(3, sell);
            pst.setInt(4, qty);
            pst.setString(5, cat);
            pst.setString(6, exp);
            pst.setString(7, supname);
            pst.setString(8, suptell);
            pst.setString(9, supeml);
            pst.setInt(10, id);
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }
    
    public boolean delItem (int id) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "DELETE FROM item WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean delUser(int id) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "DELETE FROM login WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public boolean delCah(int id) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);
            String query = "DELETE FROM tempsell WHERE id=?";
            pst = (PreparedStatement) con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }
    
}
