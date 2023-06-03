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
}
