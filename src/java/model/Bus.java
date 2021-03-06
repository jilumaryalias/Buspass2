package model;
// Generated Sep 6, 2018 2:41:38 PM by Hibernate Tools 4.3.1



/**
 * Bus generated by hbm2java
 */
public class Bus  implements java.io.Serializable {


     private Integer busId;
     private Route route;
     private String regNo;
     private String driver;
     private String phone;
     private String manufacturerYear;
     private String model;
     private String noOfSeats;

    public Bus() {
    }

    public Bus(Route route, String regNo, String driver, String phone, String manufacturerYear, String model, String noOfSeats) {
       this.route = route;
       this.regNo = regNo;
       this.driver = driver;
       this.phone = phone;
       this.manufacturerYear = manufacturerYear;
       this.model = model;
       this.noOfSeats = noOfSeats;
    }
   
    public Integer getBusId() {
        return this.busId;
    }
    
    public void setBusId(Integer busId) {
        this.busId = busId;
    }
    public Route getRoute() {
        return this.route;
    }
    
    public void setRoute(Route route) {
        this.route = route;
    }
    public String getRegNo() {
        return this.regNo;
    }
    
    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }
    public String getDriver() {
        return this.driver;
    }
    
    public void setDriver(String driver) {
        this.driver = driver;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getManufacturerYear() {
        return this.manufacturerYear;
    }
    
    public void setManufacturerYear(String manufacturerYear) {
        this.manufacturerYear = manufacturerYear;
    }
    public String getModel() {
        return this.model;
    }
    
    public void setModel(String model) {
        this.model = model;
    }
    public String getNoOfSeats() {
        return this.noOfSeats;
    }
    
    public void setNoOfSeats(String noOfSeats) {
        this.noOfSeats = noOfSeats;
    }




}


