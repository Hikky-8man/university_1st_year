import java.util.Scanner; //<>// //<>// //<>//
import java.util.ArrayList;

//path="H:\\computer science\\lab task 9\\lab9\\phone_dataset2.csv";

PhoneList phoneList;

Scanner fileReader;
//fileReader=InputReader.getScanner("H:\\computer science\\lab task 9\\lab9\\phone_dataset2.csv");

PhoneMap phoneMap;
void setup() {
  
  phoneMap=new PhoneMap();
  
  phoneList=new PhoneList();
  //Enter the path here                |
  //                                   v
  fileReader = InputReader.getScanner("\\lab9\\phone_dataset2.csv");
  fileReader.nextLine();

  String dataString;

  String[] data;
  data=new String[39];

  while (fileReader.hasNext()) {
    //String data;
    dataString = fileReader.nextLine();

    data=dataString.split(",");

    Phone newPhone;
    newPhone= new Phone(data[0]);

    newPhone.setModel(data[1]);
    newPhone.setAnnounced(data[8]);
    newPhone.setWeight_g(int(data[11]));
    newPhone.setInternal_memory(data[21]);
    newPhone.setApprox_price_EUR(int(data[36]));

    phoneList.addPhone(newPhone);
    phoneMap.addPhone(newPhone);
    //print(phoneList.getSize());
  }

  //println(phoneMap.getSize());
  //phoneMap.getCostOver(700).printPhoneList();
  //phoneMap.printPhoneMap();
  
  //for(String item:phoneMap.findPhone("Apple","iPhone 7 Plus")){
  //if(item!=null){
  //println(item);
  //}
  //}
  
  //TEST---
  //String k;
  //int g;
  //k="2";
  //g = int(k);
  //println(g+1);
  //TEST---
  
  phoneList.sort();
  phoneList.printPhoneList();

  //PhoneList newList;
  //newList=phoneList.getCostOver(600);
  //newList.sort();
  ////newList.printPhoneList();
  ////println("result:"+phoneList.findPhone("Motorola","Moto E4"));
  //for (String item : phoneList.findPhone("Motorola","Moto E4 Plus")) {
  //  if (item!=null){
  //  println(item);}
  //}
}

void draw() {
}
