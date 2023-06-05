package bean;

public class Paper {
    private Integer paperid;
    private Integer studentid;
    private String objective;
    private String subjective;
    private Integer ob_grade;
    private Integer sub_grade;
    private Integer times;

    public Integer getPaperid() {
        return paperid;
    }

    public void setPaperid(Integer paperid) {
        this.paperid = paperid;
    }

    public Integer getStudentid() {
        return studentid;
    }

    public void setStudentid(Integer studentid) {
        this.studentid = studentid;
    }

    public String getObjective() {
        return objective;
    }

    public void setObjective(String objective) {
        this.objective = objective;
    }

    public String getSubjective() {
        return subjective;
    }

    public void setSubjective(String subjective) {
        this.subjective = subjective;
    }

    public Integer getOb_grade() {
        return ob_grade;
    }

    public void setOb_grade(Integer ob_grade) {
        this.ob_grade = ob_grade;
    }

    public Integer getSub_grade() {
        return sub_grade;
    }

    public void setSub_grade(Integer sub_grade) {
        this.sub_grade = sub_grade;
    }

    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
    }


    @Override
    public String toString() {
        return "Paper{" +
                "paperid=" + paperid +
                ", studentid=" + studentid +
                ", objective='" + objective + '\'' +
                ", subjective='" + subjective + '\'' +
                ", ob_grade=" + ob_grade +
                ", sub_grade=" + sub_grade +
                ", times=" + times +
                '}';
    }
}
