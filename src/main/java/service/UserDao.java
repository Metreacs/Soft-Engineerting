package service;

import connect.BaseDao;
import bean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author wcj
 * 实现UserDao接口
 */

public class UserDao{

    /**
     * 用户登录
     * @param user
     * @return
     */
    public User login(User user) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.获取数据库连接
            con = BaseDao.getConnection();
            // 2.写sql
            String sql = "select * from user where email =? and password =?";
            // 3.预编译
            ps = con.prepareStatement(sql);
            // 4.设置值
            ps.setObject(1,user.getEmail());
            ps.setObject(2,user.getPassword());
            rs = ps.executeQuery();//进行查询
            User users = null;
            if(rs.next()){
                users = new User();
                // 从数据库中获取值到实体类的setter方法中
                users.setUserid(rs.getInt("userid"));
                users.setUsername(rs.getString("username"));
                users.setPassword(rs.getString("password"));
                users.setEmail(rs.getString("email"));
                users.setPhone(rs.getString("phone"));
                users.setIden(rs.getInt("iden"));
                // 返回的是你查询出来的完整的对象
                return users;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            // 关闭资源，避免出现异常
            BaseDao.close(con,ps,rs);
        }
        return null;
    }

    /**
     * 用户注册
     * @param user
     * @return
     */
    
    public boolean register(User user) {
        String sql = "insert into user values (0,?,?,?,?,0)";
        List<Object> list = new ArrayList<Object>();
        list.add(user.getUsername());
        list.add(user.getPassword());
        list.add(user.getEmail());
        list.add(user.getPhone());
        System.out.println("注册信息为："+user);
        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 查询用户信息
     * @param sql
     * @param arr
     * @return
     */
    
    public List<User> selectUser(String sql, Object[] arr) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            ps = con.prepareStatement(sql);
            if(arr != null){
                for (int i = 0; i < arr.length; i++) {
                    ps.setObject(i+1,arr[i]);
                }
            }
            // 3.执行sql
            rs = ps.executeQuery();
            // 4.保存查询出来的数据到list
            List<User> list = new ArrayList<User>();
            while(rs.next()){
                User user = new User();
                // 从数据库中获取值到实体类的setter方法中
                user.setUserid(rs.getInt("userid"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setIden(rs.getInt("iden"));

                // 测试数据
                System.out.println("Dao层查找测试日志，显示用户信息：");
                System.out.println(user);
                // 将对象保存到list中
                list.add(user);
            }
            return list;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            // 关闭资源，避免出现异常
            BaseDao.close(con,ps,rs);
        }
        return null;
    }


    /**
     * 根据用户编号进行查询
     * @param userid
     * @return
     */

    public User getUser(Integer userid) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "select * from user where userid = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1,userid);
            // 3.执行sql
            rs = ps.executeQuery();
            while (rs.next()){
                User user = new User();
                user.setUserid(rs.getInt("userid"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setIden(rs.getInt("iden"));

                return user;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            // 关闭资源，避免出现异常
            BaseDao.close(con,ps,rs);
        }
        return null;
    }

    /**
     * 根据邮箱来获取用户信息
     * @param email
     * @return
     */
    public User getUserByEmail(String email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "select * from user where email = ?";
            ps = con.prepareStatement(sql);
            ps.setObject(1,email);
            // 3.执行sql
            rs = ps.executeQuery();
            while (rs.next()){
                User user = new User();
                user.setUserid(rs.getInt("userid"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setIden(rs.getInt("iden"));

                return user;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            // 关闭资源，避免出现异常
            BaseDao.close(con,ps,rs);
        }
        return null;
    }
    /**
     * 根据用户名来获取用户信息
     * @param username
     * @return
     */
    public User getUserByUsername(String email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "select * from user where username = ?";
            ps = con.prepareStatement(sql);
            ps.setObject(1,email);
            // 3.执行sql
            rs = ps.executeQuery();
            while (rs.next()){
                User user = new User();
                user.setUserid(rs.getInt("userid"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setIden(rs.getInt("iden"));

                return user;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            // 关闭资源，避免出现异常
            BaseDao.close(con,ps,rs);
        }
        return null;
    }
    /**
     * 管理员新增用户
     * @param user
     * @return
     */
    
    public boolean addUser(User user) {
        String sql = "insert into user values (0,?,?,?,?,?)";
        List<Object> list = new ArrayList<Object>();
        list.add(user.getUsername());
        list.add(user.getPassword());
        list.add(user.getEmail());
        list.add(user.getPhone());
        list.add(user.getIden());

        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 根据用户ID修改用户信息
     * @param user
     * @return
     */
    
    public boolean updateUser(User user) {
        String sql = "update user set password=?,email=?,phone=?,isadmin=? where userid=?";
        List<Object> list = new ArrayList<Object>();
        list.add(user.getPassword());
        list.add(user.getEmail());
        list.add(user.getPhone());
        list.add(user.getIden());
        list.add(user.getUserid());

        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 根据用户ID删除用户
     * @param userid
     * @return
     */
    
    public boolean deleteUser(Integer userid) {
        String sql = "delete from user where userid=?";
        List<Object> list = new ArrayList<Object>();
        list.add(userid);

        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }
}
