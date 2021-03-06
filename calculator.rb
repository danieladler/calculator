puts "Hello, I'm a calculator. What type of math would you like to do?"

calculator_output = 0
calc_runs = 0

until calc_runs == 1000
#need to figure out a better way to run this loop.

input = gets.chomp.downcase

  #these blocks for each type of operation are so long! How can I consolidate
  #all operations into fewer lines? Can I group all possible operations into
  #one section, and possible outputs into another?
  if input == "add" || input == "+"
    puts "Great! I can add. Enter two numbers to be added:"
    num1 = gets.chomp
    num1_i = num1.to_i
    num2 = gets.chomp
    num2_i = num2.to_i
    calculator_output = num1.to_i + num2.to_i

      if ((num1 == "O" || num2 == "0") && (num1_i != 0 || num2_i !=0))
        puts calculator_output
        puts "#{num1} + #{num2} = #{calculator_output}\n"
      elsif
        (num1_i == 0 || num2_i == 0)
        puts "one of these is not an integer. enter 2 integers."
      else (num1 == "O" || num2 == "0")
        puts calculator_output
        puts "#{num1} + #{num2} = #{calculator_output}\n"
      end
    puts "Please enter another command or 'exit' to stop."
    #feels redundant to repeat calc_runs counter under each block.
    #also redundant to repeat the 'enter again or exit' prompt in each block.
    #how can I consolidate these?

  elsif input == "subtract" || input == "-"
    puts "Great! I can subtract. Enter two numbers to be subtracted:"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    calculator_output = num1 - num2
    puts calculator_output
    puts "#{num1} - #{num2} = #{calculator_output}\n"
    puts "Please enter another command or 'exit' to stop."
    calc_runs = calc_runs + 1

  elsif input == "multiply" || input == "*"
    puts "Great! I can multiply. Enter two numbers to be multiplied:"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    calculator_output = num1 * num2
    puts calculator_output
    puts "#{num1} * #{num2} = #{calculator_output}\n"
    puts "Please enter another command or 'exit' to stop."
    calc_runs = calc_runs + 1

  elsif input == "divide" || input == "/"
    puts "Great! I can divide. Enter two numbers to be divided:"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    calculator_output = num1 / num2
    puts calculator_output
    puts "#{num1} / #{num2} = #{calculator_output}\n"
    puts "Please enter another command or 'exit' to stop."
    calc_runs = calc_runs + 1

  elsif input == "exponent" || input == "^"
    puts "Great! I can do exponents. Enter base, then exponent:"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    calculator_output = num1 ** num2
    puts calculator_output
    puts "#{num1} ** #{num2} = #{calculator_output}\n"
    puts "Please enter another command or 'exit' to stop."
    calc_runs = calc_runs + 1

  elsif input == "modulo" || input == "%"
    puts "Great! I can do modulos. Enter two numbers and I'll show remainder"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
    calculator_output = num1 % num2
    puts calculator_output
    puts "#{num1} % #{num2} = #{calculator_output}\n"
    puts "Please enter another command or 'exit' to stop."
    calc_runs = calc_runs + 1

  elsif input == "exit"
    puts "Goodbye!"
    break

  else

    puts "Sorry, I'm not advanced enough to #{input}. Try again?"

  end

#Add code to repeat ask cycle (offer to do more math) after first calculation

end

##Optional Enhancements
#Y Print out the formula in addition to the result, i.e. 2 + 2 = 4
#Y Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
#Y Add support for the modulo operator (10 % 3 = 1).
#  Gracefully handle unexpected user input:
#  What happens if the user input is nil (i.e., the user just pressed enter)?
#### try something like input.is_integer? = false
#  What happens if the user tries to add hotdog to elephant?
#  Make your program know when it needs to return an integer versus a float.
#  Add support for parentheticals, i.e. 10 / (5 + 5) = 1.


## DANIEL QUESTIONS
## I reset 'while/until' loop to go off of calc_runs instead of calculator_output
## explore the pros/cons of these two approaches for running loops

## can we store input types (add/sub/mult/div) in an array and call them in the
# conditionals so that we don't have to do so many elsifs?
#   input_types = []

## I want to add code to repeat ask cycle (offer to do more math) after
# first calculation, without repeating the prompt in each operation block.
# Something like...

  # puts "Would you like to do any more math?"
  # input = gets.chomp.downcase
  #
  # while true
  #   if input == "yes"
  #     puts "What type of math would you like to do?"
  #   elsif input == "no"
  #     puts "Goodbye!"
  #     break
  #   end
  #   # else
  #   #   puts "Please answer yes or no."
  #   # end
  # end
