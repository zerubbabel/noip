var
    n,i,j,ans,max:longint;
    a:array[0..1000000]of longint;

procedure sort(l,r:longint);
var
    i,j,x:longint;
begin
    i:=l; j:=r;
    x:=a[(l+r) div 2];
    repeat
        while a[i]>x do inc(i);
        while a[j]<x do dec(j);
        if i<=j then
        begin
            a[0]:=a[i];
            a[i]:=a[j];
            a[j]:=a[0];
            inc(i); dec(j);
        end;
    until i>j;
    if l<j then sort(l,j);
    if i<r then sort(i,r);
end;

begin
    assign(input,'f7.in');
    assign(output,'f7.out');
    reset(input);
    rewrite(output);
    readln(n);
    for i:=1 to n do readln(a[i]);
    sort(1,n);
    i:=1; max:=0; ans:=0;
    while i<=n do
    begin
        j:=1;
        while (i<n)and(a[i]=a[i+1]) do
        begin
            if a[i]+i>max then max:=a[i]+i;
            inc(i);
            inc(j);
        end;
        if a[i]+n>=max then inc(ans,j);
        if a[i]+i>max then max:=a[i]+i;
        inc(i);
    end;
    writeln(ans);
    close(input);
    close(output);
end.