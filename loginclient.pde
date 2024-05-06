import uibooster.UiBooster;

UiBooster uibooster = new UiBooster();
Model model = new Model();
Controller controller = new Controller(model);

void setup() {
  
}

void draw() {
  if(model.isInvalid())
    showLoginDialog();
}

void showLoginDialog() {
  controller.setCredentials( 
    new UiBooster().showLogin(
        "Login",
        "Game server",
        "Username",
        "Password",
        "Enter",
        "Cancel"));
        
  controller.submit();
}
