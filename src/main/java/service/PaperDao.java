package service;

import bean.Paper;
import connect.BaseDao;
import bean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PaperDao {
    /**
     *
     * @param paper
     * @return
     */
    public boolean studentEnroll(Paper paper){

        String sql = "insert into paper values (0,?,NULL,NULL,0,3)";
        List<Object> list = new ArrayList<Object>();
        list.add(paper.getStudentid());
        System.out.println("注册信息为："+paper);
        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }

    public Paper getPaperByStuid(Integer studentid){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "select * from paper where studentid = ?";
            ps = con.prepareStatement(sql);
            ps.setObject(1,studentid);
            // 3.执行sql
            rs = ps.executeQuery();
            while (rs.next()){
                Paper paper=new Paper();
                paper.setStudentid(rs.getInt("studentid"));
                paper.setPaperid(rs.getInt("paperid"));
                paper.setSubjective(rs.getString("subjective"));
                paper.setObjective(rs.getString("objective"));
                paper.setGrade(rs.getInt("grade"));
                paper.setTimes(rs.getInt("times"));
                return paper;
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

    public boolean writePaper(Paper paper){
        String sql = "update paper set objective=?,subjective=? where studentid=?";
        List<Object> list = new ArrayList<Object>();
        System.out.println(paper);
        list.add(paper.getObjective());
        list.add(paper.getSubjective());
        list.add(paper.getStudentid());
        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }

    public Paper getPaperByTimes(){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "SELECT * FROM paper WHERE times > 0 ORDER BY times DESC LIMIT 1";
            ps = con.prepareStatement(sql);
            // 3.执行sql
            rs = ps.executeQuery();
            while (rs.next()){
                Paper paper=new Paper();
                paper.setStudentid(rs.getInt("studentid"));
                paper.setPaperid(rs.getInt("paperid"));
                paper.setSubjective(rs.getString("subjective"));
                paper.setObjective(rs.getString("objective"));
                paper.setGrade(rs.getInt("grade"));
                paper.setTimes(rs.getInt("times"));
                return paper;
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

    public boolean markScore(Integer studentID, Integer grade){
        String sql = "UPDATE paper SET grade=grade+?, times=times-1 WHERE (studentid=?)";
        List<Object> list = new ArrayList<Object>();
        list.add(grade);
        list.add(studentID);
        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag){
            return true;
        }else {
            return false;
        }
    }
}
