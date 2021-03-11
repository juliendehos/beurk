open Stdio

let () = 
    printf "hello %d\n" (18 |> Mymath.add3 |> Mymath.mul2)

