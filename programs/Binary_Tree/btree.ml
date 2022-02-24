(* Done by: IMT2019525 VIJAY JAISANKAR*)

(* Binary Tree Data Structure 
    Possible Options
    - Null Value (phi)
    - Head Node that is not null
      - NodeContent aka key
      - LeftChild - subtree
      - RightChild - subtree
      
    The 'and' keyword is used as they are interconnected data types/generics and 'a is for polymorphism
*)
type 'a binarytree = 
  Nullvalue 
  | Node of 'a treeNode

and 'a treeNode = {
  nodecontent: 'a;
  leftchild: 'a binarytree;
  rightchild: 'a binarytree
};;

(* Find v in tree t
    Possible Cases
    - t is empty (null value) -> v not in t (by default)
    - t is not empty -> see if nodecontent of this head node is v OR v in left subtree OR v in right subtree
*)
let rec find t v = 
  match t with  
    Nullvalue -> false 
    | Node {nodecontent;leftchild;rightchild} -> v = nodecontent || find leftchild v || find rightchild v;;

(*
  Find number of nodes in t
    Possible Cases 
    - t is empty (null value) -> 0 nodes in the tree
    - t is not empty -> count this head node and count similar nodes for both subtrees
*)
let rec num_of_nodes t = 
  match t with  
    Nullvalue -> 0
    | Node{nodecontent;leftchild;rightchild} -> 1 + num_of_nodes leftchild + num_of_nodes rightchild;;