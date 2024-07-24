# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create Interview Questions
InterviewQuestion.create(
  question: "Explain the following Data Types: String, Integer, Float, Boolean, Array, Hash",
  topic: "Data Types",
  link: "https://backend.turing.edu/module1/lessons/datatypes"
)
InterviewQuestion.create(
  question: "What is the differnce between a .map and a .each method in Ruby?",
  topic: "Enumerables",
  link: ""
)
InterviewQuestion.create(
  question: "What is polymorphism in Object Oriented Programming?",
  topic: "OOP",
  link: "https://www.example.com/interview_questions/1"
)
InterviewQuestion.create(
  question: "What is polymorphism in Object Oriented Programming?",
  topic: "OOP",
  link: "https://www.example.com/interview_questions/1"
)
InterviewQuestion.create(
  question: "What is polymorphism in Object Oriented Programming?",
  topic: "OOP",
  link: "https://www.example.com/interview_questions/1"
)
InterviewQuestion.create(
  question: "What is polymorphism in Object Oriented Programming?",
  topic: "OOP",
  link: "https://www.example.com/interview_questions/1"
)

# More InterviewQuestion.create(...)

# Create Javascript Lessons
JavascriptLesson.create(
  lesson: "Introduction to JavaScript",
  topic: "JavaScript",
  link: "https://www.example.com/javascript_lessons/1"
)

# More JavascriptLesson.create(...) 

# Create Ruby Lessons
RubyLesson.create(
  lesson: "Introduction to Ruby",
  topic: "Ruby",
  link: "https://www.example.com/ruby_lessons/1"
)

# More RubyLesson.create(...)