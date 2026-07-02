public class program {

    public static void main(String[] args) {

        Product[] products = {

                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Phone", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Bag", "Fashion")
        };

        Product result1 = LinearSearch.linearSearch(products, 104);

        if(result1 != null){

            System.out.println("Linear Search Found : " + result1.productName);
        }

        Product result2 = BinarySearch.binarySearch(products,105);

        if(result2 != null){

            System.out.println("Binary Search Found : " + result2.productName);
        }

    }
}