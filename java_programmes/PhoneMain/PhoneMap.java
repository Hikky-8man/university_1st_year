import java.util.HashMap;
class PhoneMap {
    private HashMap<String, Phone> phones;

    public PhoneMap() {
        this.phones=new HashMap<String, Phone>();
    }

    public void addPhone(Phone phone) {
        String k;
        k=phone.getBrand()+" "+phone.getModel();
        this.phones.put(k, phone);
    }

    public int getSize() {
        return this.phones.size();
    }

    public void printPhoneMap() {
        for (String item : this.phones.keySet()) {
            System.out.println(item);
        }
    }

    public PhoneList getCostOver(int price) {
        PhoneList list;
        list=new PhoneList();

        for (String theKey : this.phones.keySet()) {
            //for (Phone item : this.phones.get(theKey)) {
            if (this.phones.get(theKey).getApprox_price_EUR()>=price) {
                list.addPhone(this.phones.get(theKey));
                //}
            }
        }
        return list;
    }

    public String[] findPhone(String brandName,String modelName){
        String[] result;
        result=new String[6];
        result[0]="Not found";

        for (String theKey: this.phones.keySet()){
            //this.phones.get(theKey) -- The phone

            if(brandName.equals(this.phones.get(theKey).getBrand())){
                result[0]="Brand: "+this.phones.get(theKey).getBrand();
                result[1]="Model: "+this.phones.get(theKey).getModel();
                result[2]="Announced: "+this.phones.get(theKey).getAnnounced();
                result[3]="Weight(g): "+String.valueOf(this.phones.get(theKey).getWeight_g());
                result[4]="Internal memory: "+this.phones.get(theKey).getInternal_memory();
                result[5]="Cost(Euros): "+String.valueOf(this.phones.get(theKey).getApprox_price_EUR());
            }
        }
        return result;
    }
}
