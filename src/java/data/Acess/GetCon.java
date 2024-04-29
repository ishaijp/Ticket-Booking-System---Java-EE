package data.Acess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetCon 
{
    private GetCon(){}
    
    public static Connection con;
    static
    {
        try
        {
            Class.forName(Initializer.DRIVER);
            con = DriverManager.getConnection(Initializer.DB,Initializer.USER,Initializer.PASS);
            System.out.println("Connection");
        }catch(ClassNotFoundException e)
                {
                    e.printStackTrace();
                } catch(SQLException e)
                {
                    System.out.println("Exception is in GetCon");
                }
    }
    public static Connection getCon()
    {
        return con;
    }
    public static void main(String[] args){
        GetCon g = new GetCon();
        
        getCon();
    }
}
