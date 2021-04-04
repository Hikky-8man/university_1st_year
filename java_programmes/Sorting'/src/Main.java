import java.util.ArrayList;
public class Main {

    public static void main(String[] args){
        ArrayList<String[]> arrayList = new ArrayList<String[]>();
        arrayList.add(new String[]{"A","E","I"});
        arrayList.add(new String[]{"O","U"});
        for (String[] item:arrayList){System.out.println(item);}
        System.out.println(arrayList.get(1)[0]);
    }
}
