import java.util.Optional;
import uibooster.model.LoginCredentials;
import java.util.List;

class Model {
  private Optional<LoginCredentials> loginCredentials = Optional.empty();
  private LoginStatus loginStatus = LoginStatus.IDLE;
  
  public void emptyLoginCredentials() {loginCredentials = Optional.empty();}
  public boolean isInvalid() { return List.of(LoginStatus.IDLE, LoginStatus.FAILED).contains(loginStatus);}
  
  public Optional<LoginCredentials> getLoginCredentials() { return loginCredentials; }
  public void setLoginCredentials(Optional<LoginCredentials> loginCredentials) { this.loginCredentials = loginCredentials; }
  public void setLoginStatus(LoginStatus loginStatus) {this.loginStatus = loginStatus;}
  public LoginStatus getLoginStatus() {return loginStatus;}
}
