#n
:input_loop
/^w/b up
/^s/b down
b end


:up
s/.*//g
# s/w//
i\
  ^[[2J pressed up
p
s/\.\+//

b end


:down
x
s/^/pressed down/
p
s/^//
x
s/^s//
b input_loop 


s/*//
x
:start
s/^/*/
/*\{10\}/b end
b start
:end
x
s/^/looped 10 times/
p

:end
