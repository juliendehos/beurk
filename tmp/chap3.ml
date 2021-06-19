
(* Exercise: list expressions *)

let list1 = [1;2;3;4;5];;

let list2 = 1::2::3::4::5::[];;

let list3 = [1] @ [2;3;4] @ [5];;

assert (list1 = list2);;
assert (list1 = list3);;

(* Exercise: product *)

let rec product = function
    | [] -> 1
    | x :: xs -> x * product xs;;

let product2 (l : int list) =
    let rec go ll acc = match ll with
        | [] -> acc
        | x::xs -> go xs (acc*x)
    in go l 1;;

assert (42 == product [2;21]);;
assert (42 == product2 [2;21]);;

(* Exercise: concat *)

let rec concat (l1 : 'a list) (l2 : 'a list) = match l1 with
    | [] -> l2
    | x :: xs -> x :: (concat xs l2);;

assert ([1;2;3;4] == concat [1;2] [3;4]);;


