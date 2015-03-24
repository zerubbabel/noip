 program p4(input,output);
 var
     min,s,i,n,max,temp:longint;

 begin
     assign(input,'test.in');
     reset(input);
     assign(output,'test.out');
     rewrite(output);
     readln(n);
     s:=0;
     max:=0;
     min:=0;
     for i:=1 to n do
     begin
         read(temp);
         s:=s+temp;
         if s-min>max then
         begin
             max:=s-min;
         end;
         if s<min then
         begin
             min:=s;
         end;
     end;
     writeln(max);
     close(input);
     close(output);
 end.
