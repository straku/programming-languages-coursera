fun count (from: int, to: int) =
  if from = to
  then to :: []
  else from :: count(from + 1, to);

(* encapsulates count function inside countup_from1 function, count won't *)
fun countup_from1 (x: int) =
  let
    fun count (from: int, to: int) =
      if from = to
      then to :: []
      else from :: count(from + 1, to);
  in
    count(1, x)
  end

(* doesn't use unnecessary (in this case) second parameter in count function *)
fun countup_from1_better (x: int) =
  let
    fun count (from: int) =
      if from = x
      then x :: []
      else from :: count(from + 1);
  in
    count(1)
  end