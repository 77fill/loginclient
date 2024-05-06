class LoginMessage {
  public MessageType type;
  public String username;
  public String hashedPassword;
  
  public LoginMessage(MessageType type, String username, String hashedPassword) {
    this.type = type;
    this.username = username;
    this.hashedPassword = hashedPassword;
  }
}
