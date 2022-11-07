import java.util.ArrayList;
import java.util.List;

public class ListProducts implements Products
{
    private List<Product> products = new ArrayList<>();

    public ListProducts()
    {
        // When an instsance of this class is created, we'll populate the products array list with data, "faking" the records
        insert((new Product("hammer", 9.99)));
        insert((new Product("screwdriver", 9.99)));
        insert((new Product("drill", 19.99)));
    }

    public List<Product> all()
    {
        return this.products;
    }

    // Persist a new record. We'll simulate this by adding the passed object to our internal array list of products.
    public void insert(Product product)
    {
        this.products.add(product);
    }
}
