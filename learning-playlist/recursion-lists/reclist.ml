let y : int list = [1;2;3];;


(* rec == Recursive Function *)
let rec length_list (l : int list) : int = 
	begin match l with 
		| [] -> 0
		| h::t -> 1 + (length_list t)
	end;;

print_int(length_list y);;
