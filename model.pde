import java.util.Optional;
import uibooster.model.LoginCredentials;

class Model {
  private Optional<LoginCredentials> loginCredentials = Optional.empty();
  private LoginStatus loginStatus = LoginStatus.IDLE;
  
  public void emptyLoginCredentials() {loginCredentials = Optional.empty();}
  public boolean isNotLoggedIn() { return List.of(LoginStatus.IDLE, LoginStatus.FAILED).contains(loginStatus);}
  
  public Optional<LoginCredentials> getLoginCredentials() { return loginCredentials; }
  public void setLoginCredentials(Optional<LoginCredentials> loginCredentials) { this.loginCredentials = loginCredentials; }
  public void setLoginStatus(LoginStatus loginStatus) {this.loginStatus = loginStatus;}
  public LoginStatus getLoginStatus() {return loginStatus;}
}
