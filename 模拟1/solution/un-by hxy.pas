var
    c:char;
begin
    assign(input,'un.in');
    assign(output,'un.out');
    reset(input);
    rewrite(output);
    
    while not eoln do
    begin
        read(c);
        if pos(c,'CAMBRIDGE')=0 then write(c);
    end;
    writeln;
    
    close(input);
    close(output);
end.