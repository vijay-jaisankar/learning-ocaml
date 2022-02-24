(* length function - given list l it gives its length *)
let rec length l =
  if l = [] then 0
  else  1 + (length (List.tl l))

(* 
  nth function - given list l it gives its nth element. 
  (* input = List
     output = element *)
*)
let rec nth l n =
  if l = [] then raise (Failure "list too short; n too large!")
  else if n = 0 then (List.hd l)
  else nth (List.tl l) (n - 1)

(*
sum - takes a list of integers and returns the sum of all its elements.
*)
let rec sum l =
  if l = [] then 0
  else  (List.hd l) + (sum (List.tl l))

(* length with pattern matching *)
let rec length_pm l =
  match l with
    [] -> 0
  | _ :: t -> 1 + (length_pm t)

let rec nth_pm l n =
  match l with
    [] -> raise (Failure "list too short; n too large!")
  | h :: t ->  if n = 0 then h else nth_pm t (n - 1)

let is_empty l =
  match l with
    [] -> true
  | _  -> false
