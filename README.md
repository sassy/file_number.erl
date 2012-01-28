# file_number.erl
* ファイルに行番号を挿入するだけの簡単なスクリプト
* Erlangを勉強するために書いただけ
## 使い方
erlを立ち上げて、file_number.erlをコンパイルする
file_number:add_file_number(A,B).で
Aのファイルに行番号をつけたものをBファイルに出力

    $ erl
    
    Eshell V5.7.4  (abort with ^G)
    1> c(file_number)..
    {ok,file_number}
    2> file_number:add_file_number(test.dat, test2.dat).
    ok
