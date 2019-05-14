using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LambdaExercise
{
    class Program
    {
        static void Main(string[] args)
        {
            // Lambda
            // #1
            Func<string> greet = () => "Hello World";
            Console.WriteLine(greet());

            // #2
            Func<int, int> number = num => num + 1;
            Console.WriteLine(number(5));

            //#3
            Func<int, int, int> numbnumb = (x, y) => (int)Math.Pow(y, x);
            Console.WriteLine(numbnumb(2, 3));

            // #4
            Func<int, int, int> sumOfNum = (x, y) => x + y;
            Console.WriteLine(sumOfNum(4, 5));

            // #5
            Func<string, string, string> wordStrings = (hello, goodbye) => goodbye + hello;
            Console.WriteLine(wordStrings("Hey", "Herro"));

            // LINQ
            List<int> numListGen = Enumerable.Range(1, 20).ToList();

            IList<string> stringList = new List<string>()
            {
                "Month", "Day", "Year",
                "Hour", "Minute", "Second"
            };

            // #1            
            var numGenList = numListGen.Select((y) => number(y)).ToList();
            foreach (var num in numGenList)
            {
                Console.WriteLine(num);
            }

            // #2
            numGenList = numListGen.Select((x) => numbnumb(2, x)).ToList();
            foreach (var num in numGenList)
            {
                Console.WriteLine(num);
            }

            // #3            
            int intResult = numListGen.Aggregate((result, next) => sumOfNum(result, next));
            Console.WriteLine(intResult);

            // #4
            string stringResult = stringList.Aggregate((result, next) => wordStrings(result, next));
            Console.WriteLine(stringResult);

            // #5
            List<int> listGenerated = Enumerable.Repeat(2, 4).ToList();
            Console.WriteLine(listGenerated.Aggregate((result, next) => numbnumb(result, next)));
            
        }
    }
}
