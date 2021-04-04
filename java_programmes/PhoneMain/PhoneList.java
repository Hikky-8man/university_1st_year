import java.util.ArrayList;
import java.util.Collections;

class PhoneList {

    private ArrayList <Phone> phones;

    public PhoneList() {
        this.phones=new ArrayList <Phone>();
    }

    public void addPhone(Phone p) {
        this.phones.add(p);
    }

    public int getSize() {
        return phones.size();
    }

    public PhoneList findPhoneInPriceRange(int upperBound, int lowerBound){
        PhoneList newList;
        newList=new PhoneList();

        for (Phone item:this.phones){
            if (item.getApprox_price_EUR()>=lowerBound && item.getApprox_price_EUR()<=upperBound){
                newList.addPhone(item);
            }
        }
        return newList;
    }

    public void printPhoneList() {
        for (Phone phone : this.phones) {
            System.out.println("Brand: "+phone.getBrand()+" Model: "+phone.getModel()+" Price(Euro): "+phone.getApprox_price_EUR()+" Announced: "+phone.getAnnounced()+"\n");
        }
    }

    public void sort() {
        Collections.sort(phones);
    }

    public PhoneList getCostOver(int price) {
        PhoneList newPhoneList;
        newPhoneList=new PhoneList();
        for (Phone item : this.phones) {
            if (item.getApprox_price_EUR()>=price) {
                newPhoneList.addPhone(item);
            }
        }
        return newPhoneList;
    }

    public String[] findPhone(String brandName, String modelName) {
        //Phone desiredPhone;
        String[] result;
        result=new String[6];

        //Boolean flag;
        //flag = false;

        result[0]="Nothing found";
        //Goes through every phone in the arrayList
        for (Phone item : this.phones) {
            //System.out.println(brandName+"="+item.getBrand()+".");
            //System.out.println(brandName==item.getBrand());
            //if (item.getBrand()==brandName) {
            if (brandName.equals(item.getBrand())) {
                //if (item.getModel()==modelName) {
                if (modelName.equals(item.getModel())) {
                    result[0]="Brand: "+item.getBrand();
                    result[1]="Model: "+item.getModel();
                    result[2]="Announced: "+item.getAnnounced();
                    result[3]="Weight(g): "+String.valueOf(item.getWeight_g());
                    result[4]="Internal memory: "+item.getInternal_memory();
                    result[5]="Cost(Euros): "+String.valueOf(item.getApprox_price_EUR());
                }
            }
        }
        return result;
    }
}
