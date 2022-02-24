let st = true;;
let v = 1;;

if st then v = 2 else v = 3;;

(* if st then v = 2 will fail as there should be an else block *)
(* if (2>1) then 2 else "1" will fail due to type safety *)

if (3==1) then print_string("hi") else if (3==2) then print_string("hello") else print_string("bye");;
