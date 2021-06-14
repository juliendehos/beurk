
let double x = x*2;;

assert (double 21 = 42);;
assert (double 0 = 0);;

let cube x = x*x*x;;

assert (cube 0 = 0);;
assert (cube 2 = 8);;

let sign x = 
    if x = 0 then 0
    else if x < 0 then -1
    else 1;;

assert (sign 42 = 1);;
assert (sign 0 = 0);;
assert (sign (-2) = (-1));;

let area r = Float.pi *. r ** 2.;;

assert (area 1. = Float.pi);;
assert (Float.abs ( 3.14 -. area 1.) < 0.01);;

let rms x y =
    sqrt ((x**2. +. y**2.)/. 2.);;

assert (Float.abs (3.53 -. rms 3. 4.) < 0.01);;

let rec fib n =
    if n = 1 then 1
    else if n = 2 then 1
    else fib (n-1) + fib (n-2);;

assert (fib 1 = 1);;
assert (fib 2 = 1);;
assert (fib 3 = 2);;
assert (fib 4 = 3);;
assert (fib 5 = 5);;

let ffib n =
    let rec go x0 x1 i = if i = 1 then x0 else go (x0+x1) x0 (i-1)
    in go 1 0 n;;

assert (ffib 1 = 1);;
assert (ffib 2 = 1);;
assert (ffib 3 = 2);;
assert (ffib 4 = 3);;
assert (ffib 5 = 5);;

let _ = 
    print_string "hello " ;
    print_endline "world!"

