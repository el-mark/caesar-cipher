require 'pry'
#

def solve_cipher(input, shift)

 input = input.downcase

 input_array = input.split(//)
 
 counter = 0	

 solved_input_array =[]
  
  while counter < input.length

  	#if input_array[counter].ord == 65 || input_array[counter].ord == 97
  	#	solved_input_array[counter] = (input_array[counter].ord + 25).chr
  	#else
	#solved_input_array[counter] = (input_array[counter].ord + shift).chr

	if input_array[counter].ord == 32

		solved_input_array[counter] = input_array[counter]

	else

	  	input_array_ord = input_array[counter].ord + shift

	  	a = input_array_ord
	  	
		  	if a < 97
		  		input_array_ord = input_array_ord + 25
		  	elsif a > 122 
				input_array_ord = input_array_ord - 25
			end

		solved_input_array[counter] = input_array_ord.chr
	  	
	end
	counter = counter + 1

  end

  solved_input = solved_input_array.join

  puts solved_input

end

solve_cipher("ifmmp", -1)
solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)

binding.pry