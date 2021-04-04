class Contact {
  private String firstName;
  private String lastName;
  private String email;
  private String number;

  public Contact(String fn, String ln,String e, String n) {
    firstName=fn;
    lastName=ln;
    
    setEmail(e);
    setNumber(n);
  }
  
  public void setEmail(String e){
    email=e;
  }
  
  public void setNumber(String n){
    number=n;
  }
  
  public String toString(){
    return "First name: "+firstName+"\nLast name: "+lastName+"\nEmail: "+email+"\nPhone number: "+number;
  }
}
