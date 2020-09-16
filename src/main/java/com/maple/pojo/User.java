package com.maple.pojo;

/**
 * @author Maple
 */

public class User {
    private int id;
    private String name;
    private String sex;
    private String password;
    private String address;
    private String email;
    private String question;
    private String answer;
    private String createDate;
    private String favorate;

    public User() {
    }

    public User(int id, String name, String sex, String password, String address, String email, String question, String answer, String createDate, String favorate) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.password = password;
        this.address = address;
        this.email = email;
        this.question = question;
        this.answer = answer;
        this.createDate = createDate;
        this.favorate = favorate;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getQuestion() {
        return question;
    }
    public void setQuestion(String question) {
        this.question = question;
    }
    public String getAnswer() {
        return answer;
    }
    public void setAnswer(String answer) {
        this.answer = answer;
    }
    public String getCreateDate() {
        return createDate;
    }
    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
    public String getFavorate() {
        return favorate;
    }
    public void setFavorate(String favorate) {
        this.favorate = favorate;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", createDate='" + createDate + '\'' +
                ", favorate='" + favorate + '\'' +
                '}';
    }
}
