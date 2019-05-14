#Reyes Aquileo
#[HW 3B] C# Review - Generics, Properties, and Indexers 

Generics
What are the benefits of using a generic class over a generalized class?
1.
Generics provide the solution to a limitation in earlier versions of the common language runtime and the C# language in which generalization is accomplished by casting types to and from the universal base type Object. By creating a generic class, you can create a collection that is type-safe at compile-time.

The limitations of using non-generic collection classes can be demonstrated by writing a short program that uses the ArrayList collection class from the .NET class library. An instance of the ArrayList class can store any reference or value type.




Apply
Properties
2.public interface ISampleInterface
{
    // Property declaration:
    string Name
    {
        get;
        set;
    }
}

3.public class Car : IEquatable<Car>
{
    public string Make {get; set;}
    public string Model { get; set; }
    public string Year { get; set; }

    // Implementation of IEquatable<T> interface
    public bool Equals(Car car)
    {
        return this.Make == car.Make &&
               this.Model == car.Model &&
               this.Year == car.Year;
    }
}





Indexers

4.struct IntBits

{

    private int bits;



    // Simple constructor, implemented as an expression-bodied method

    public IntBits(int initialBitValue) => bits = initialBitValue;

    

    // indexer to be written here

}
