InterviewQuestion.create(
  question: "Explain the following Data Types: String, Integer, Float, Boolean, Array, Hash",
  topic: "Data Types",
  link: "https://backend.turing.edu/module1/lessons/datatypes"
)
InterviewQuestion.create(
  question: "What is the differnce between a .map and a .each method in Ruby?",
  topic: "Enumerables",
  link: "https://medium.com/@abhishektanwar9596/what-is-the-difference-between-map-and-each-in-ruby-1f2fbb5d5842"
)
InterviewQuestion.create(
  question: "What is polymorphism in Object Oriented Programming?",
  topic: "OOP",
  link: "https://medium.com/@shanikae/polymorphism-explained-simply-7294c8deeef7"
)



# Create Javascript Lessons
JavascriptLesson.create(
  lesson: "Objects:
  Objects are used to store collections of data and more complex entities. They are created using curly braces {} and can contain properties.
  let person = {
    name: 'Alice',
    age: 30,
    height: 5.6
    };
    The person object has three properties: name, age, and height. Properties can be accessed using dot notation or bracket notation.
    console.log(person.name); // 'Alice'
    console.log(person['age']); // 30
    To add or update a property, you can simply assign a value to it.
    person.city = 'New York'; // Add a new property
    person.age = 31; // Update an existing property",
  topic: "Objects",
  link: "https://www.example.com/javascript_lessons/1"
)
JavascriptLesson.create(
  lesson: "Functions:
  Functions are reusable blocks of code that perform a specific task. They are defined using the function keyword followed by the function name and parentheses. The code block is enclosed in curly braces.
  function greet(name) {
    return 'Hello, ' + name + '!';
    }
    The function greet takes a name as an argument and returns a greeting message. Functions can take multiple arguments and return a value.
    let result = greet('Alice'); // 'Hello, Alice!'",
  topic: "Functions",
  link: "https://www.example.com/javascript_lessons/1"
)
JavascriptLesson.create(
  lesson: "Conditional Statements:
  Conditional statements allow us to execute different code based on different conditions.
  let number = 10;

  if (number > 5) {
    console.log('The number is greater than 5.');
  } else if (number === 5) {
    console.log('The number is equal to 5.');
  } else {
    console.log('The number is less than 5.');
  }
  Conditions are checked in order, and the first true condition executes its block.
  === checks for strict equality, > and < for greater or lesser comparisons.",
  topic: "Conditional Logic",
  link: "https://www.example.com/javascript_lessons/1"
)



# Create Ruby Lessons
RubyLesson.create(
  lesson: "Arrays:
  Arrays are ordered list that are comma seperated and enclosed in square brackets. Arrays can contain any data type(integer, string, hash, array). can mix data types in arrays but it is not recommended.
  fruits = ['apple', 'banana', 'cherry']

  # Accessing elements
  puts fruits[0]  # Outputs 'apple'
  puts fruits[1]  # Outputs 'banana'
  puts fruits[2]  # Outputs 'cherry'

  # Adding an element
  fruits << 'date'
  puts fruits     # Outputs ['apple', 'banana', 'cherry', 'date']",
  topic: "Data Types",
  link: "https://ruby-doc.org/core-2.7.0/Array.html"
)
RubyLesson.create(
  lesson: "Conditional Statements:
  Conditional statements allow us to execute different code based on different conditions.
  example:
  number = 5
  if number > 5
    puts 'The number is greater than 5.'
  elsif number == 5
    puts 'The number is equal to 5.'
  else
    puts 'The number is less than 5.'
  end
  Conditions are checked in order, and the first true condition executes its block.",
  topic: "Conditional Logic",
  link: "https://www.rubyguides.com/ruby-tutorial/ruby-if-else/"
)
RubyLesson.create(
  lesson: ".each method:
  The .each method is an enumerable method that allows you to iterate over each element in an array or hash.
  example:
  fruits = ['apple', 'banana', 'cherry']
  fruits.each do |fruit|
    puts fruit
  end
  the line 'puts fruit' will be executed for each element in the array, the |fruit| is a block variable that represents the current element in the iteration.
  
  hash = {name: 'Alice', age: 30}
  hash.each do |key, value|
    puts key
    puts value
  end
  the line 'puts key' will output the key and 'puts value' will output the value for each key-value pair in the hash.",
  topic: "iterating",
  link: "https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-each"
)

puts "Data Seeded"