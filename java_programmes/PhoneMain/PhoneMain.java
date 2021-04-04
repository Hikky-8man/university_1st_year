/**
 * Created by 190089166 on 02/12/2019.
 */
import java.util.Scanner;
import java.util.ArrayList;

public class PhoneMain {
public static void main(String[] args){
    PhoneList phoneList;
    phoneList=new PhoneList();

    PhoneList newList;
    //newList = new PhoneList();

    PhoneMap phoneMap;
    phoneMap=new PhoneMap();

    Scanner fileReader;
    fileReader=InputReader.getScanner("H:\\computer science\\lab9\\PhoneMain.java\\src\\phone_dataset2.csv");
    fileReader.nextLine();

    String dataString;
    String[] data;

    Scanner in;
    data=new String[39];

    while (fileReader.hasNext()){
        dataString=fileReader.nextLine();

        data=dataString.split(",");

        Phone newPhone;
        newPhone=new Phone(data[0]);
        newPhone.setModel(data[1]);
        newPhone.setAnnounced(data[8]);
        newPhone.setWeight_g((int)Float.parseFloat(data[11]));
        newPhone.setInternal_memory(data[21]);
        newPhone.setApprox_price_EUR((int)Float.parseFloat(data[36]));

        phoneList.addPhone(newPhone);
        phoneMap.addPhone(newPhone);
    }
    phoneList.sort();
    //phoneList.printPhoneList();

    System.out.println("Enter an lower price bound:");
    in=new Scanner(System.in);
    int lower = in.nextInt();
    //System.out.println(lower);

    in=new Scanner(System.in);
    System.out.println("Enter an upper price bound:");
    int upper=in.nextInt();
    //System.out.println(upper);

    newList=phoneList.findPhoneInPriceRange(upper,lower);
    newList.sort();
    newList.printPhoneList();
}

}
