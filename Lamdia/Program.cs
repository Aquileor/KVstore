
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//Aquileo Reyes
//5/13/2019
//In-Class Exercise - Lambdas and LINQ 

namespace Lamdia
{
        class Program
        {
            static void Main(string[] args)
            {
                // Lambda Questions


                // #1
                Func<string> Hi = () => "Hello World";
                Console.WriteLine(Hi());

                // #2
                Func<int, int> Numbers = num => num + 1;
                Console.WriteLine(Numbers(4));

                //#3
                Func<int, int, int> NumNum = (x, y) => (int)Math.Pow(y, x);
                Console.WriteLine(NumNum(2, 3));

                // #4
                Func<int, int, int> SumNum = (x, y) => x + y;
                Console.WriteLine(SumNum(4, 5));

                // #5
                Func<string, string, string> wordStrings = (hello, goodbye) => goodbye + hello;
                Console.WriteLine(wordStrings("Hi", "Hello"));

            // LINQ Questions 

            //Declare a list of sequential integers with a method from the Enumerable class.
            List<int> NumList = Enumerable.Range(1, 21).ToList();

            //Declare a list of dummy strings.
            IList<string> StringList = new List<string>()
            {
                " !!", " Love", " To",
                " Eat", " Pizza", "I"
            };

                // #1            
                var NumListGen = NumList.Select((y) => Numbers(y)).ToList();
                foreach (var num in NumListGen)
                {
                    Console.WriteLine(num);
                }

                // #2
                NumListGen = NumList.Select((x) => NumNum(2, x)).ToList();
                foreach (var num in NumListGen)
                {
                    Console.WriteLine(num);
                }

                // #3            
                int IntResult = NumList.Aggregate((result, next) => SumNum(result, next));
                Console.WriteLine(IntResult);

                // #4
                string stringResult = StringList.Aggregate((result, next) => wordStrings(result, next));
                Console.WriteLine(stringResult);

                // #5
                List<int> listGenerated = Enumerable.Repeat(2, 4).ToList();
                Console.WriteLine(listGenerated.Aggregate((result, next) => NumNum(result, next)));

            }
        }
    }
