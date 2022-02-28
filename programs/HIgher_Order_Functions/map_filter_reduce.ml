(* Done by: IMT2019525 Vijay Jaisankar *)

let sq x = 
	x*x;;

let gtz x = 
	if x >= 0 then true 
	else false;;

let sqlist l = 
	List.map sq l;;

let filtergtz l = 
	List.filter gtz l;;

let mullist l = 
	List.fold_left (fun x y -> x*y) 1 l;;


