package model;
// Generated Sep 6, 2018 2:41:38 PM by Hibernate Tools 4.3.1



/**
 * NewPassengerRequest generated by hbm2java
 */
public class NewPassengerRequest  implements java.io.Serializable {


     private Integer requestId;
     private User user;
     private String date;
     private String status;

    public NewPassengerRequest() {
    }

    public NewPassengerRequest(User user, String date, String status) {
       this.user = user;
       this.date = date;
       this.status = status;
    }
   
    public Integer getRequestId() {
        return this.requestId;
    }
    
    public void setRequestId(Integer requestId) {
        this.requestId = requestId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getDate() {
        return this.date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }




}

