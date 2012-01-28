-module(file_number).
-export([add_file_number/2]).

add_file_number(Readfile, Writefile) ->
  {OK, S} = file:open(Readfile, read),
  {OK, T} = file:open(Writefile, write),
  X = 1,
  read_line(S, T, X),
  file:close(T),
  file:close(S).

read_line(S, T, X) ->
  case io:get_line(S, '') of
    eof ->
      ok;
    Line ->
      io:format(T, "~w~s~s", [X, " ", Line]),
      read_line(S, T, X+1)
  end.
