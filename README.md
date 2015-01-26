String Calculator
=================

The following is an exercise in coding, refactoring and test-driven development.

## Pre-requisites

Please ensure you have the following tools installed prior to the beginning of the session:
- Ruby interpreter, version 1.9.3 or higher
- Git (git comes pre-installed with OSX)

## Before you start

- Execute the following commands in the terminal to setup for the exercise:
```
  git clone git@github.com:iparips/string-calculator-ruby.git
  cd string-calculator-ruby
  gem install bundler
  bundle install
```
- Now you are setup to proceed with the exercise

## Requirements Summary

Create a 'string calculator' class with a method 'add' that accepts a string as an argument. The string will contain comma separated numbers. The add method is to return the sum of those numbers.

## Implementation Approach

The aim of the exercise is to practice test driven development (TDD). A common pattern of doing TDD is Red - Green - Refactor cycle. It is defined as a set of steps below:

1. Write a test for behaviour you would like to implement; execute the test which will result in a failure - because the requirement is not yet implemented
1. Implement a requirement (from the list below); then, execute the test again and see it pass
1. Clean up the code if required, for example by removing duplication

Please complete the requirements from the list below using Red - Green - Refactor cycle for each requirement. Implement one requirement at a time. Try not to read ahead. The trick is to learn to work incrementally. 

- Only test for correct inputs. There is no need to test for invalid inputs for this execrise
- For testing, this exercise uses ruby rspec gem; all tests can be executed using the following command: ```bundle exec rspec```
- If you have any questions please ask your instructors

## Detailed Requirements

1. Given an empty string the calculator should return 0
    - Eg: ```calc.add('')``` should return 0

1. Given a string containig one integer the calculator should return that integer.
    - Eg: ```calc.add('1')``` should return 1

1. Given a string with two comma separated integers the calculator should return a sum of those integers
    - Eg: ```calc.add('1,2')``` should return 3

1. Remember to refactor after each passing test

1. Allow the calculator to handle an unknown amount of numbers
    - Eg: ```calc.add('1,2,3,4,5')``` should return 15

1. Allow the calculator to handle new lines between numbers (instead of commas)
  - Eg: ```calc.add("1\n2,3")``` should return 6
  - the following input is not valid:  "1,\n" (no need to prove it in a test)

1. Support different delimiters: to change a delimiter, the beginning of the string will contain a separate line that looks like this:   "//[delimiter]\n[numbers…]"
  - Eg: ```calc.add("//;\n1;2")``` should return 3
  - the first line is optional. All previously implemented scenarios should still be supported

1. Calling add with non-numeric values will result in an exception with the message "invalid input: 'x'", where x is the supplied input
    - Eg: ```calc.add('1,x')``` should result in an exception with a message of "invalid input: '1,x'"

1. Stop here if you are a beginner. Continue if you can finish the steps so far in less than 30 minutes.

1. Numbers bigger than 1000 should be ignored, so adding 2 + 1001  = 2
    - Eg: ```calc.add('2, 1001')``` should return 2

1. Delimiters can be of any length with the following format:  "//[delimiter]\n"
    - Eg: ```calc.add("//[***]\n1***2***3")``` should return 6

1. Allow multiple delimiters in format: ```"//[delim1][delim2]\n"```
    - Eg: ```calc.add("//[*][%]\n1*2%3")``` should return 6.

1. Make sure you can also handle multiple delimiters with length longer than one character

## Advanced Requirements: Mocking and Stubing

- Add Logging Abilities to your new String Calculator using a Logger class. Every time you call add method, the sum result will be logged to the logger.

## References

- Rspec Reference: https://relishapp.com/rspec/docs/gettingstarted 
- Git Commands References: https://gist.github.com/iparips/9923839
- Refactoring: http://c2.com/cgi/wiki?WhatIsRefactoring
- Pair Programming: http://www.extremeprogramming.org/rules/pair.html

## Credits

- Problem Description was inspired by Roy Osherove's string calculator exercise: http://osherove.com/tdd-kata-1/
