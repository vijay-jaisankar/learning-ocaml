let l1 = [1;2;3];;

(* let l = [1;true;10];; won't work because of type safety *)

let l2 = [(1+2); (4*9)];;

let x : int list = [2;3];;

(*List "concat;add" :: *)

let y = 1::x;;

let emp = [];;


let is_list_empty (l : int list) : int = 
	match l with 
	| [] -> 1
	| h::t -> 0;;

print_int (is_list_empty emp);;
