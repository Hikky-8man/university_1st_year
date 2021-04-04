public class hello_there {
    public static void main(String[] args){
        System.out.println("Hello there");
        if (args.length==0) {
            System.out.println("There is nothing in the args array");
        }
        else{
            System.out.println("Their are "+args.length+" data items in the array.\n " +
                    "they are:");
            for (String item:args){
                System.out.println(item);
            }
        }
    }
}
