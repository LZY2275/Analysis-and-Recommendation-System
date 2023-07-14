package com.example.analysisandrecommendationsystem.entity;

public class Geography {
    private String name;
    private String address;
    private String province;
    private int enrollmentNumber2020;
    private int enrollmentNumber2021;
    private int enrollmentNumber2022;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public int getEnrollmentNumber2020() {
        return enrollmentNumber2020;
    }

    public void setEnrollmentNumber2020(int enrollmentNumber2020) {
        this.enrollmentNumber2020 = enrollmentNumber2020;
    }

    public int getEnrollmentNumber2021() {
        return enrollmentNumber2021;
    }

    public void setEnrollmentNumber2021(int enrollmentNumber2021) {
        this.enrollmentNumber2021 = enrollmentNumber2021;
    }

    public int getEnrollmentNumber2022() {
        return enrollmentNumber2022;
    }

    public void setEnrollmentNumber2022(int enrollmentNumber2022) {
        this.enrollmentNumber2022 = enrollmentNumber2022;
    }
}
