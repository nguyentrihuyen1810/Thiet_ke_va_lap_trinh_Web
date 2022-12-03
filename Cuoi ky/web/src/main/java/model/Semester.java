package model;

public class Semester {
    private Long semesterId;
    private String semesterName;

    public Semester() {
    }

    public Semester(Long semesterId, String semesterName) {
        this.semesterId = semesterId;
        this.semesterName = semesterName;
    }

    public Long getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(Long semesterId) {
        this.semesterId = semesterId;
    }

    public String getSemesterName() {
        return semesterName;
    }

    public void setSemesterName(String semesterName) {
        this.semesterName = semesterName;
    }
}
