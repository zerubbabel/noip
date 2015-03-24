const dx:array[1..4] of integer=(1,0,0,-1);
      dy:array[1..4] of integer=(0,1,-1,0);
var n,i,j,k,xx,yy,x,y,x1,y1,x2,y2,front,rear:longint;
    q:array[0..1000000,1..3] of longint;
    c:char;
    flag:boolean;
    a,hash:array[0..1000,0..1000] of byte;
begin
  assign(input,'findn.in');
  assign(output,'findn.out');
  reset(input);
  rewrite(output);

  readln(n);
  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
      read(c);
      a[i,j]:=ord(c)-48;
    end;
    readln;
  end;
  front:=0;
  rear:=0;
  readln(x1,y1);
  readln(x2,y2);
  if (x1=x2) and (y1=y2) then begin
                                writeln('0');
                                halt;
                              end;
  q[front,1]:=x1;
  q[front,2]:=y1;
  q[front,3]:=0;
  fillchar(hash,sizeof(hash),0);
  hash[x1,y1]:=1;
  flag:=false;
  while front<=rear do
  begin
    x:=q[front,1];
    y:=q[front,2];
    k:=q[front,3];
    for i:=1 to 4 do
    begin
      xx:=x+dx[i];
      yy:=y+dy[i];
      if (xx>0) and (xx<=n) and (yy>0) and (yy<=n) then
        if a[xx,yy]=0 then if hash[xx,yy]=0 then
          begin
            rear:=rear+1;
            q[rear,1]:=xx;
            q[rear,2]:=yy;
            q[rear,3]:=k+1;
            hash[xx,yy]:=1;
            if (xx=x2) and (yy=y2) then begin
                                          flag:=true;
                                          break;
                                        end;
          end;
    end;
    if flag then break;
    front:=front+1;
  end;
  writeln(q[rear,3]);

  close(input);
  close(output);
end.

