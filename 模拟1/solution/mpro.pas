var i,j,k,m,n,temp,max,min:longint;
       s:array[0..600,0..600]of longint;
 begin
     assign(input,'mpro.in');
     reset(input);
     assign(output,'mpro.out');
     rewrite(output);
     readln(n,m);
     for i:=1 to n do
     begin
         for j:=1 to m do
         begin
             read(temp);s[i,j]:=s[i,j-1]+s[i-1,j]-s[i-1,j-1]+temp;
         end;
     end;
     max:=0;
     for i:=0 to n-1 do
     begin
         for j:=i+1 to n do
         begin
             min:=0;
             for k:=1 to m do
             begin
                 temp:=s[j,k]-s[i,k];
                 if temp-min>max then max:=temp-min;
                 if temp<min then min:=temp;
             end;
         end;
     end;
     writeln(max);
     close(input);
     close(output);
 end.
