package connect;


import java.sql.*;

/**
 * 实现数据库的连接和基本的增删改查
 */
public class BaseDao {
    private static String driver = "com.mysql.cj.jdbc.Driver";//MySQL自己提供的驱动
    private static String url = "jdbc:mysql://localhost/softengineering?serverTimezone=UTC&useSSL=false";//主协议：子协议：IP地址/数据库表名？时区的设置
    private static String user = "root";
    private static String password = "123456";

    /**
     * 连接数据库的方法
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        // 使用反射加载数据库驱动，使程序有更好的可移植性
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url,user,password);
        return con;
    }

    /**
     * 关闭数据库的方法
     * @param con
     * @param ps
     * @param rs
     */
    public static void close(Connection con, PreparedStatement ps, ResultSet rs){
        // 关闭资源，避免出现异常
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(ps != null){
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(con != null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 设置增删改的方法
     * @param sql
     * @param arr
     * @return 是否修改成功
     */
    public static boolean addUpdateDelete(String sql,Object[] arr){
        Connection con = null;
        PreparedStatement ps = null;
        try {
            // 第一步：连接数据库
            con = BaseDao.getConnection();
            // 第二步：预编译SQL语句
            ps = con.prepareStatement(sql);
            // 第三步：设置值（填充占位符）
            if(arr != null && arr.length !=0){
                for (int i = 0; i < arr.length; i++) {
                    ps.setObject(i+1,arr[i]);
                }
            }
            int count = ps.executeUpdate();//执行SQL语句
            if(count > 0){
                return true;
            }else{
                return false;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean addUpdateDelete(Connection con,String sql,Object[] arr){

        PreparedStatement ps = null;
        try {

            // 第一步：预编译SQL语句
            ps = con.prepareStatement(sql);
            // 第二步：设置值（填充占位符）
            if(arr != null && arr.length !=0){
                for (int i = 0; i < arr.length; i++) {
                    ps.setObject(i+1,arr[i]);
                }
            }
            int count = ps.executeUpdate();//执行SQL语句
            if(count > 0){
                return true;
            }else{
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args){
        try {
            BaseDao.getConnection();
            System.out.println("---测试数据库链接成功---");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
