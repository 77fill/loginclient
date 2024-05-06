import uibooster.model.LoginCredentials;
import java.util.Optional;
import com.google.gson.Gson;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class Controller {
  private Model model;
  
  public void setCredentials(LoginCredentials credentials) {
    if(!credentials.isFilled()) {
      model.emptyLoginCredentials();
      model.setLoginStatus(LoginStatus.FAILED);
      return;
    }
    
    model.setLoginStatus(LoginStatus.VALID);
    model.setLoginCredentials(Optional.of(credentials));
  }
  
  public void submit() {
    if(model.getLoginStatus() == LoginStatus.VALID) {
      var credentials = model.getLoginCredentials().get();
      var hashedPassword = "";
      try {
        var digest = MessageDigest.getInstance("MD5");
        hashedPassword = new String(digest.digest(credentials.getPassword().getBytes()));
      } catch (NoSuchAlgorithmException ex) { throw new IllegalArgumentException(); }
      
      var message = new LoginMessage(MessageType.Login, credentials.getUsername(), hashedPassword);
      
      println(new Gson().toJson(message));
    }
  }
  
  public Controller(Model model) {
    this.model = model;
  }
}
