let is_zero (x: int) : string = 
	match x with 
	|0 -> "true"
	|1 -> "false"
	|_ -> "bruh";;

print_string (is_zero 4);;


