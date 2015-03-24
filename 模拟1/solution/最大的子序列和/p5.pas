 program p5(input,output);
 var
     i,j,k,m,n,temp,max,min:longint;
     s:array[0..1000,0..1000]of longint;
 begin
     assign(input,'matrix.in');
     reset(input);
     assign(output,'matrix.out');
     rewrite(output);
     readln(n,m);
     for i:=1 to n do
     begin
         for j:=1 to m do
         begin
             read(temp);
             s[i,j]:=s[i,j-1]+s[i-1,j]-s[i-1,j-1]+temp;
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
                 if temp-min>max then
                 begin
                     max:=temp-min;
                 end;
                 if temp<min then
                 begin
                     min:=temp;
                 end;
             end;
         end;
     end;
     writeln(max);
     close(input);
     close(output);
 end.