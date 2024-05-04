import uibooster.model.LoginCredentials;
import java.util.Optional;

class Controller {
  private Model model;
  
  public void setCredentials(LoginCredentials credentials) {
    if(!credentials.isFilled()) {
      model.emptyLoginCredentials();
      model.setLoginStatus(LoginStatus.FAILED);
      return;
    }
    
    model.setLoginStatus(LoginStatus.SUCCESS);
    model.setLoginCredentials(Optional.of(credentials));
  }
  
  public Controller(Model model) {
    this.model = model;
  }
}
