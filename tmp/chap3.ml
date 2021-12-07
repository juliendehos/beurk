
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

assert ([1;2;3;4] = concat [1;2] [3;4]);;

(* Exercise: patterns *)

let patt1 l = match l with
    | "bigred" :: _ -> true
    | _ -> false;;

let patt2 l = match l with
    | [_;_] -> true
    | [_;_;_;_] -> true
    | _ -> false;;

let patt3 l = match l with
    | x::y::_ -> x=y
    | _ -> false;;

assert (patt3 [1;1]);;
assert (patt3 [1;1;2]);;
assert (false = patt3 [1;2]);;
assert (false = patt3 [1]);;

(* Exercise: library *)

let get5 (l : int list) = 
    if List.length l < 5 then 0 else List.nth l 4;;

assert (5 == get5 [1;2;3;4;5;6]);;
assert (0 == get5 [1;2]);;

let revsort (l : int list) = 
    List.sort Stdlib.compare l 
    |> List.rev;;

assert ([4;3;2;1] = revsort [2;1;4;3]);;

