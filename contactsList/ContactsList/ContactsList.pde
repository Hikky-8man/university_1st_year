import java.util.Scanner;
import java.util.ArrayList;

Scanner in;
ArrayList<Contact> contacts;
int current;
Button next;
Button back;

void setup() {
  size(800, 400);

  in=InputReader.getScanner("C:\\Users\\frase\\Documents\\processing programmes\\contactsList\\Contacts.csv");
  contacts= new ArrayList<Contact>();

  current=0;

  next=new Button(650, 350, 100, 75, "next");
  back=new Button(150, 350, 100, 75, "back");

  String header;
  header=in.nextLine();

  Contact contact;
  String csv;
  String[] data;
  data = new String[4];

  while (in.hasNext()) {
    csv=in.nextLine();

    data = csv.split(",");
    contact=new Contact(data[0], data[1],data[2],data[3]);
    //println(contact=new Contact(data[0], data[1]));

    contacts.add(contact);
  }
}


void draw() {
  background(255);
  Contact c;
  c=contacts.get(current);

  fill(0);
  textSize(20);

  textAlign(CENTER);
  text(c.toString(), 400, 150);

  next.display();
  back.display();
}

public void mousePressed() {
  //NEXT
  if (next.isInside(mouseX, mouseY)) {
    if (current<int(contacts.size()-1)) {
      current++;
    } else {
      current=0;
    }
    
  } if (back.isInside(mouseX, mouseY)) {
    if (current<=0) {
      current=int(contacts.size())-1;
    } else {
      current--;
    }
  }
}
