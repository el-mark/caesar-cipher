require 'pry'
#

def solve_cipher(input)
  #your code goes here

 input_array = input.split(//)
 
 counter = 0	

 solved_input_array =[]
  
  while counter < input.length

  	if input_array[counter].ord == 65 || input_array[counter].ord == 97

  		solved_input_array[counter] = (input_array[counter].ord + 25).chr

  	else

  	solved_input_array[counter] = (input_array[counter].ord - 1).chr

  	end

  	counter = counter + 1

  end

  solved_input = solved_input_array.join

  puts solved_input

end

solve_cipher("ifmmp")

binding.pry