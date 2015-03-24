 program p3(input,output);
 var
     i,n:longint;
     a:array[1..10000000]of longint;
     max:longint;

 procedure work(l,r:longint);
 var
     m,i,temp,s1,s2:longint;
 begin
     if l=r then
     begin
         if a[l]>max then max:=a[l];
     end
     else
     begin
         m:=(l+r)div 2;
         temp:=0;
         s1:=0;
         for i:=m downto l do
         begin
             temp:=temp+a[i];
             if temp>s1 then
             begin
                 s1:=temp;
             end;
         end;
         s2:=0;
         temp:=0;
         for i:=m+1 to r do
         begin
             temp:=temp+a[i];
             if temp>s2 then
             begin
                 s2:=temp;
             end;
         end;
         if s1+s2>max then max:=s1+s2;
         work(l,m);
         work(m+1,r);
     end;
 end;

 begin
     assign(input,'test.in');
     reset(input);
     assign(output,'test.out');
     rewrite(output);
     readln(n);
     for i:=1 to n do
     begin
         read(a[i]);
     end;
     max:=0;
     work(1,n);
     writeln(max);
     close(input);
     close(output);
 end.
