# Create Interview Lessons
Lesson.create(
  lesson_type: :interview,
  lesson: "Explain the following Data Types: `String, Integer, Float, Boolean, Array, Hash`",
  topic: "Data Types",
  link: "https://backend.turing.edu/module1/lessons/datatypes"
)
Lesson.create(
  lesson_type: :interview,
  lesson: "What is the differnce between a `.map` and a `.each` method in Ruby?",
  topic: "Enumerables",
  link: "https://medium.com/@abhishektanwar9596/what-is-the-difference-between-map-and-each-in-ruby-1f2fbb5d5842"
)
Lesson.create(
  lesson_type: :interview,
  lesson: "What is polymorphism in Object Oriented Programming?",
  topic: "Polymorphism",
  link: "https://medium.com/@shanikae/polymorphism-explained-simply-7294c8deeef7"
)
Lesson.create(
  lesson_type: :interview,
  lesson: "In as much detail as possible, describe the request-response cycle.",
  topic: "Request-Response Cycle",
  link: "https://backend.turing.edu/module2/lessons/how_the_web_works_http"
)
Lesson.create(
  lesson_type: :interview,
  lesson: "Explain a git merge workflow vs a git rebase workflow.",
  topic: "Git Merge vs Git Rebase",
  link: "https://frontend.turing.edu/lessons/module-3/merge-vs-rebase"
)
Lesson.create(
  lesson_type: :interview,
  lesson: "Explain as much as you can about RESTful APIs.",
  topic: "RESTful APIs",
  link: "https://blog.postman.com/rest-api-examples/"
)

# Create JavaScript Lessons
Lesson.create(
  lesson_type: :javascript,
  lesson: "Objects are used to store collections of data and more complex entities. They are created using curly braces `{}` and can contain properties. The `person` object below has three properties: name, age, and height. Properties can be accessed using dot notation or bracket notation.
  ```
  let person = {
    name: 'Alice',
    age: 30,
    height: 5.6
    };
    
  console.log(person.name); // 'Alice'
  console.log(person['age']); // 30
  ```

  To add or update a property, you can simply assign a value to it.

  `person.city = 'New York'; // Add a new property`

  `person.age = 31; // Update an existing property`",
  topic: "Objects",
  link: "https://frontend.turing.edu/lessons/module-1/js-intro-to-objects.html"
)
Lesson.create(
  lesson_type: :javascript,
  lesson: "Functions are reusable blocks of code that perform a specific task. They are defined using the function keyword followed by the function name and parentheses. The code block is enclosed in curly braces.
  ```
  function greet(name) {
    return 'Hello, ' + name + '!';
    }
  ```
  The function greet takes a name as an argument and returns a greeting message. Functions can take multiple arguments and return a value.
  
  `let result = greet('Alice'); // 'Hello, Alice!'`",
  topic: "Functions",
  link: "https://frontend.turing.edu/lessons/module-1/js-intro-to-functions.html"
)
Lesson.create(
  lesson_type: :javascript,
  lesson: "Conditional statements allow us to execute different code based on different conditions.
  ```
  let number = 10;

  if (number > 5) {
    console.log('The number is greater than 5.');
  } else if (number === 5) {
    console.log('The number is equal to 5.');
  } else {
    console.log('The number is less than 5.');
  }
  ```
  Conditions are checked in order, and the first true condition executes its block.
  `===` checks for strict equality, `>` and `<` for greater or lesser comparisons.",
  topic: "Conditional Statements",
  link: "https://www.javascript.com/learn/conditionals"
)
Lesson.create(
  lesson_type: :javascript,
  lesson: "The Document Object Model, DOM, is an interface for HTML. It is what allows us to use JavaScript to manipulate the elements or content of elements on a page. 
  Think about a form on a website (maybe signing up to use an application, or paying for your food delivery). Somehow, JavaScript has to know what was typed into an input field, know that the submission button was clicked, and be able to do whatever needs to happen next (maybe showing you a confirmation message). 
  If we didn't have the DOM, this wouldn't be possible. 
  Once the browser runs/interprets our HTML, it creates the DOM. 
  The DOM represents what is in the HTML, but it is formatted in a way that we can interact with those elements via JavaScript. It is not the exact same thing as your HTML document.
  Basics:
  1. The DOM is essential to building functionality on a page
  2. We can use the document variable in our JavaScript file to interact with the DOM. From there, we can travel through the DOM and ask for specific elements, or instruct the program to change elements.",
  topic: "DOM",
  link: "https://frontend.turing.edu/lessons/module-1/js-intro-to-the-dom.html"
)
Lesson.create(
  lesson_type: :javascript,
  lesson: "Changing stuff on the page with JavaScript is great, but you might as well have just written it in the markup to begin with. The real power of JavaScript comes into play when we write code that responds to user input.
  This power emerges when we start listening for user events. This is the crux of front-end engineering. We present a user interface and then as the user interacts with the UI, we change and update what they see.
  Vocab:
  `Event` Any event which takes place in the DOM, these can be generated by users or the browser.
  `Event Listener` A function invoked on a DOM node which fires the event handler when a specified event occurs on the node or its children
  `Event Handler` A function that will run when a specific event occurs",
  topic: "Event Listeners",
  link: "https://frontend.turing.edu/lessons/module-1/js-intro-to-event-listeners.html"
)
Lesson.create(
  lesson_type: :javascript,
  lesson: "In JavaScript, you can declare variables using `var`, `let`, or `const`.

  - **`var`**: Has function scope and can be redeclared and updated.
  - **`let`**: Has block scope and can be updated but not redeclared in the same scope.
  - **`const`**: Has block scope and cannot be updated or redeclared.

  Example:
  ```javascript
  let name = 'Alice';
  const age = 25;

  name = 'Bob'; // This works
  age = 30;     // This will cause an error because `const` cannot be reassigned",
  topic: "Variables",
  link: "https://frontend.turing.edu/lessons/module-1/js-intro-to-event-listeners.html"
)

# Create Ruby Lessons
Lesson.create(
  lesson_type: :ruby,
  lesson: "Arrays are ordered lists that are comma seperated and enclosed in square brackets. Arrays can contain different data types (integer, string, hash, array). You can mix data types in arrays but it is not recommended.
  
  `fruits = ['apple', 'banana', 'cherry']`

  **Accessing elements using index:**
  Since arrays are integer-indexed, you can use this syntax to access particular elements:
  ```
  puts fruits[0]  # Outputs 'apple'
  puts fruits[1]  # Outputs 'banana'
  puts fruits[2]  # Outputs 'cherry'
  ```
 **Adding an element with the shovel operator:**

  `fruits << 'date'`
  
  `puts fruits # Outputs ['apple', 'banana', 'cherry', 'date']`",
  topic: "Arrays",
  link: "https://ruby-doc.org/core-2.7.0/Array.html"
)
Lesson.create(
  lesson_type: :ruby,
  lesson: "Conditional statements allow us to execute different code based on different conditions.
  example:
  ```
  number = 5
  if number > 5
    puts 'The number is greater than 5.'
  elsif number == 5
    puts 'The number is equal to 5.'
  else
    puts 'The number is less than 5.'
  end
  ```
  Conditions are checked in order, and the first true condition executes its block.",
  topic: "Conditional Statements",
  link: "https://www.rubyguides.com/ruby-tutorial/ruby-if-else/"
)
Lesson.create(
  lesson_type: :ruby,
  lesson: "The `.each` method is an enumerable method that allows you to iterate over each element in an array or hash.
  example:
  ```
  fruits = ['apple', 'banana', 'cherry']
  fruits.each do |fruit|
    puts fruit
  end
  ```
  The line `puts fruit` will be executed for each element in the array, the `|fruit|` is a block variable that represents the current element in the iteration.
  ```
  hash = {name: 'Alice', age: 30}

  hash.each do |key, value|
    puts key
    puts value
  end
  ```
  The line `puts key` will output the key and `puts value` will output the value for each key-value pair in the hash.",
  topic: "Iterating",
  link: "https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-each"
)
Lesson.create(
  lesson_type: :ruby,
  lesson: "In Ruby, you can use the `chars` method along with `tally` to count the occurrences of each character in a string.

  **Example:**

  Let's say you want to count how many times each character appears in the string `'hello world'`.

  ```
  ruby
  string = 'hello world'
  char_count = string.chars.tally
  puts char_count  # Outputs: {'h'=>1, 'e'=>1, 'l'=>3, 'o'=>2, ' '=>1, 'w'=>1, 'r'=>1, 'd'=>1}
  ```

  **Getting Characters as an Array:**
    - `string.chars` converts the string into an array of individual characters.
    - For `'hello world'`, this results in `['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']`.

  **Tallying the Characters:**
    - The `tally` method counts the occurrences of each character in the array.
    - It returns a hash where the keys are the characters and the values are the counts of each character.",
  topic: "Counting Characters in a String",
  link: "https://ruby-doc.org/core-2.7.0/String.html"
)
Lesson.create(
  lesson_type: :ruby,
  lesson: "Regular Expressions, commonly known as **regex**, are sequences of characters that define a search pattern. 
  They are used to match, search, and manipulate strings based on specific patterns, making them a powerful tool in text processing.
  In Ruby, a regex is typically defined between two forward slashes (/). Anything between these slashes is considered the pattern that the regex will try to match.

  **Example:**

  Let's say you want to check if a string contains a number.

  ```ruby
  string = 'The price is 100 dollars'
  contains_number = string.match?(/\\d+/)
  puts contains_number  # Outputs: true
  ```

  **Explanation:**

  1. **Matching a Pattern:**
    - The `match?` method checks whether the regex pattern matches any part of the string.
    - The regex pattern `\d+` looks for one or more digits in the string.
    - In `'The price is 100 dollars'`, the pattern matches `'100'`, so `contains_number` is `true`.

  2. **Using Regex to Replace Text:**

  You can also use regex to replace parts of a string.

  ```ruby
  string = 'The price is 100 dollars'
  new_string = string.gsub(/\\d+/, '200')
  puts new_string  # Outputs: 'The price is 200 dollars'
  ```

  - Here, `gsub` is used to find the digits in the string and replace them with `'200'`.

  **Why Use Regex?**

  Regular expressions are incredibly versatile, allowing you to perform complex search and replace operations on strings. They can match patterns like email addresses, phone numbers, specific words, or even complex formats.

  **Common Regex Symbols:**

  - `\\d` - Matches any digit (0-9).
  - `\\w` - Matches any word character (letters, digits, underscores).
  - `\\s` - Matches any whitespace character (spaces, tabs).
  - `.` - Matches any character except a newline.

  Regular expressions may seem intimidating at first, but once you understand the basics, they become an essential part of your Ruby toolkit.",
  topic: "Regex",
  link: "https://ruby-doc.org/core-2.4.2/Regexp.html#:~:text=Regular%20expressions%20(regexps)%20are%20patterns,new%20constructor."
)
Lesson.create(
  lesson_type: :ruby,
  lesson: "In Ruby, methods can be defined as either class methods or instance methods.

  - **Instance Methods**: Belong to an instance of a class and are called on objects created from the class.
  - **Class Methods**: Belong to the class itself and are called on the class rather than its instances.

  Example:
  ```ruby
  class Dog
    def bark   # Instance method
      'Woof!'
    end

    def self.species   # Class method
      'Canis lupus familiaris'
    end
  end

  fido = Dog.new
  puts fido.bark        # Outputs: Woof!
  puts Dog.species      # Outputs: Canis lupus familiaris",
  topic: "Class vs Instance Methods",
  link: "https://ruby-doc.org/core-2.7.0/String.html"
)

puts "Data Seeded"


