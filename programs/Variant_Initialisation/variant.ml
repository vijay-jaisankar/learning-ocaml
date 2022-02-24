type mylist =
    Empty
  | NonEmpty of int * mylist

let l1 = NonEmpty(1, NonEmpty(2, Empty))

(* implement length and nth functions that take mylist type as input and return the
  appropriate values. *)

type weekdays =
    Sunday
  | Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday

let string_of_weekday wd =
  match wd with
    Sunday -> "Sunday"
  | Monday -> "Monday"
  | Tuesday -> "Tuesday"
  | Wednesday -> "Wednesday"
  | Thursday -> "Thursday"
  | Friday -> "Friday"
  | Saturday -> "Saturday"

type shape =
    Rectangle of float * float
  | Circle of float


let area s =
  match s with
    Rectangle(l, b) -> l *. b
  | Circle(r) -> 3.141 *. r *. r
