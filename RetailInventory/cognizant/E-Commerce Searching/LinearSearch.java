public class LinearSearch {

    public static Product linearSearch(Product[] products, int targetId) {

        for (Product product : products) {

            if (product.productId == targetId) {

                return product;
            }
        }

        return null;
    }
}