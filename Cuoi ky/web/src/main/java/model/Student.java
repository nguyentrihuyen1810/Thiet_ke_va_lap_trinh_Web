package model;

import java.util.Date;

public class Student {
    private Long studentId;
    private String studentCode;
    private String studentName;
    private String studentClass;
    private Date studentBirthday;
    private boolean studentStatus;
    private Long studentSemesterId;
    private Long studentCourseId;
    private Long studentAccountId;

    public Student() {
    }

    public Student(Long studentId, String studentCode, String studentName, String studentClass, Date studentBirthday, boolean studentStatus, Long studentSemesterId, Long studentCourseId, Long studentAccountId) {
        this.studentId = studentId;
        this.studentCode = studentCode;
        this.studentName = studentName;
        this.studentClass = studentClass;
        this.studentBirthday = studentBirthday;
        this.studentStatus = studentStatus;
        this.studentSemesterId = studentSemesterId;
        this.studentCourseId = studentCourseId;
        this.studentAccountId = studentAccountId;
    }

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public String getStudentCode() {
        return studentCode;
    }

    public void setStudentCode(String studentCode) {
        this.studentCode = studentCode;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public Date getStudentBirthday() {
        return studentBirthday;
    }

    public void setStudentBirthday(Date studentBirthday) {
        this.studentBirthday = studentBirthday;
    }

    public boolean isStudentStatus() {
        return studentStatus;
    }

    public void setStudentStatus(boolean studentStatus) {
        this.studentStatus = studentStatus;
    }

    public Long getStudentSemesterId() {
        return studentSemesterId;
    }

    public void setStudentSemesterId(Long studentSemesterId) {
        this.studentSemesterId = studentSemesterId;
    }

    public Long getStudentCourseId() {
        return studentCourseId;
    }

    public void setStudentCourseId(Long studentCourseId) {
        this.studentCourseId = studentCourseId;
    }

    public Long getStudentAccountId() {
        return studentAccountId;
    }

    public void setStudentAccountId(Long studentAccountId) {
        this.studentAccountId = studentAccountId;
    }
}
