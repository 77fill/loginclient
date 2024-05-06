enum MessageType {
  Login, Registration;
  
  public String getRequestData() {
    return name();
  }
}
