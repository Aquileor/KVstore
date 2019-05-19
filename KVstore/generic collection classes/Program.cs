using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//Project 2
//In a new project, instantiate an instance of each of the generic collection classes described in Chapter 18:


namespace generic_collection_classes
{
    public class Program
    {
        public static void Main(string[] args)
        {
            List();
            LinkedList();
            Queue();
            Stack();
            Dictionary();
            SortedList();
            HashSet();

        }

        public static void List()
        {
            List<string> word = new List<string>();

            Console.WriteLine("This displays List<T> Class.");
            word.Add("one");
            word.Add("two");
            word.Add("three");
            word.Add("four");
            word.Add("five");
            foreach (string num in word)
            {
                Console.WriteLine(num);
            }
        }

        public static void LinkedList()
        {
            LinkedList<string> word = new LinkedList<string>();

            Console.WriteLine("\nThis displays LinkedList<T> Class.");
            word.AddLast("one");
            word.AddLast("two");
            word.AddLast("three");
            word.AddLast("four");
            word.AddLast("five");

            foreach (string num in word)
            {
                Console.WriteLine(num);
            }
        }

        public static void Queue()
        {
            Queue<string> numbers = new Queue<string>();

            Console.WriteLine("\nThis displays Queue<T> Class.");
            numbers.Enqueue("One");
            numbers.Enqueue("Two");
            numbers.Enqueue("Three");
            numbers.Enqueue("Four");
            numbers.Enqueue("Five");


            foreach (string num in numbers)
            {
                Console.WriteLine(num);
            }
        }

        public static void Stack()
        {
            Stack<string> numbers = new Stack<string>();

            Console.WriteLine("\nThis displays Stack<T> Class.");
            numbers.Push("One");
            numbers.Push("Two");
            numbers.Push("Three");
            numbers.Push("Four");
            numbers.Push("Five");

            foreach (string num in numbers)
            {
                Console.WriteLine(num);
            }
        }

        public static void Dictionary()
        {
            Console.WriteLine("\nThis displays Dictionary<TKey, TValue> Class.");
            Dictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "One" },
                {2, "Two" },
                {3, "Three" },
                {4, "Four" },
                {5, "Five" }
            };

            foreach (KeyValuePair<int, string> item in dict)
            {
                Console.WriteLine("Key: {0}, Value: {1}", item.Key, item.Value);
            }
        }

        public static void SortedList()
        {
            Console.WriteLine("\nThis displays SortedList<TKey, TValue> Class.");

            SortedList<string, int> sortedList1 = new SortedList<string, int>();
            sortedList1.Add("One", 1);
            sortedList1.Add("Two", 2);
            sortedList1.Add("Three", 3);
            sortedList1.Add("Four", 4);
            sortedList1.Add("Five", 5);

            foreach (KeyValuePair<string, int> item in sortedList1)
                Console.WriteLine("key: {0}, value: {1}", item.Key, item.Value);
        }

        public static void HashSet()
        {
            Console.WriteLine("\nThis displays HashSet<T> Class.");

            HashSet<int> oddNum = new HashSet<int>();

            for (int i = 0; i < 5; i++)
            {
                oddNum.Add(2 * i + 1);
            }

            foreach (int i in oddNum)
            {
                Console.WriteLine(i);
            }

        }
         
    }
}

