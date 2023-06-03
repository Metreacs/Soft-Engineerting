package service;

import bean.Paper;
import bean.Texts;
import connect.BaseDao;
import bean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class TextsDao {
    public boolean submitText(Texts text){
        Integer questionType = text.getQuestionType();
        if(questionType == 0){
            String sql = "insert into Texts values (?,?,?,?,?,?,?,0)";
            List<Object> list = new ArrayList<Object>();
            list.add(text.getQuestion());
            list.add(text.getAnswer());
            list.add(text.getChooseA());
            list.add(text.getChooseB());
            list.add(text.getChooseC());
            list.add(text.getChooseD());
            list.add(text.getQuestionType());
            boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
            if(flag){
                return true;
            }else {
                return false;
            }
        }
        else {
            String sql = "insert into Texts values (?,?,NULL,NULL,NULL,NULL,?,0)";
            List<Object> list = new ArrayList<Object>();
            list.add(text.getQuestion());
            list.add(text.getAnswer());
            list.add(text.getQuestionType());
            boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
            if(flag){
                return true;
            }else {
                return false;
            }
        }
    }

    public Texts getTexts(Integer questionid){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "select * from texts where questionid = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1,questionid);
            // 3.执行sql
            rs = ps.executeQuery();
            while (rs.next()){
                Texts text=new Texts();
                text.setQuestion(rs.getString("Question"));
                text.setAnswer((rs.getString("Answer")));
                text.setChooseA(rs.getString("ChooseA"));
                text.setChooseB(rs.getString("ChooseB"));
                text.setChooseC(rs.getString("ChooseC"));
                text.setChooseD(rs.getString("ChooseD"));
                text.setType(Integer.parseInt(rs.getString("Type")));
                text.setQuestionid(rs.getInt("Questionid"));
                return text;
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

    public Integer getTextNum(){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // 1.连接数据库
            con = BaseDao.getConnection();
            // 2.预编译
            String sql = "select count(questionid) num from texts";
            ps = con.prepareStatement(sql);
            // 3.执行sql
            rs = ps.executeQuery();
            rs.next();
            Integer textN=rs.getInt("num");
            System.out.println(textN);
            return textN;
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
}
