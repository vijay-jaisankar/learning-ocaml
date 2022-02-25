(* Done by: IMT2019525 VIJAY JAISANKAR*)

(* n-ary tree - A node can either be a leaf node i.e value; or a node with value and an associated lead of other nodes.*)
type 'a naryTree = 
  InternalNode of 'a * ('a naryTree) list 
  | Leaf of 'a

(* If the node is a leaf node, we just need to check the value; if not, we check the value of the node and then crawl the list of nodes.*)
let rec find value tree = 
  match tree with 
    Leaf nodeValue -> nodeValue = value
    | InternalNode (nodeValue,nodeList) -> if nodeValue = value then true else crawl value nodeList

(* If the list of nodes is empty, we have already reached the false case of find, so we return false. Else, we check the find value of the first element of the list [lucky case: if it is an internal node]; and if that's false, we recursively call this function for the rest of the list, represented here by tail.*)
and crawl value nodeList = 
  match nodeList with 
    [] -> false 
    | head::tail -> if find value head then true else crawl value tail

(* Note: Mutual recursion is used here, find depends on crawl() and vice-versa*)