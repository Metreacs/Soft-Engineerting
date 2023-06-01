package bean;

public class Paper {
    private Integer paperid;
    private Integer studentid;
    private String objective;
    private String subjective;
    private Integer grade;
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

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
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
                ", grade=" + grade +
                '}';
    }

}
