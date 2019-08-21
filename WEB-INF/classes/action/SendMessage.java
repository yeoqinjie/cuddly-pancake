package action;
import java.sql.*;


/**
 * This is a send message class
 */
public class SendMessage {
   private String message = "No message specified";
 
   public String getMessage() {
      return(message);
   }
   public void setMessage(String message) {
      this.message = message;
   }
}

