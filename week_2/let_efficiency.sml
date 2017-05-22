(* 
bad because repeats computation for every element for the list (on every
level) resulting in the worst scenario (maximum number at the end of list) 
in the exponential number of calls 
*)
fun bad_max (xs: int list) =
  if null xs
  then 0
  else if null(tl xs)
    then hd xs
    else if hd xs > bad_max(tl xs)
      then hd xs
      else bad_max(tl xs)

(* stores result of computation in tl_ans binding avoiding exponential calls *)
fun good_max (xs: int list) =
  if null xs
  then 0
  else if null(tl xs)
    then hd xs
    else
      let val tl_ans = good_max(tl xs)
      in
        if hd xs > tl_ans
        then hd xs
        else tl_ans
      end

fun countdown (x: int) =
  if x = 0
  then []
  else x :: countdown(x - 1)

fun countup (x: int) =
  let
    fun countup_range (i: int) =
      if i = x + 1
      then []
      else i :: countup_range(i + 1)
  in
    countup_range(1)
  end