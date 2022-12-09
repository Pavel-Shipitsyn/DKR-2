function NEcopy(s:string;i,j:integer):string;
var
  k:integer;
begin
  result:='';
  if i<1 then i:=1;
  if i<=length(s) then begin
    if i+j-1>length(s) then j:=length(s);
    for k:=i to j+i-1 do result:=result+s[k];
  end;
end;
var
  s, ss: String;
  i, j, p, q: Integer;
  t: Char;
begin
  Write('   Строка: ');
  ReadLn(s);
  Write('Подстрока: ');
  ReadLn(ss);
  i:= 1;
  j:= Length(s)-Length(ss)+1;
  while i <= j do
    begin
    if NEcopy(s,i,Length(ss))=ss then
      begin
        p:= i;
        Inc(i,Length(ss));
        q:=i-1;
        while p < q do
          begin
            t:=s[p];
            s[p]:= s[q];
            s[q]:= t;
            Inc(p);
            Dec(q);
          end;
        end
      else 
        Inc(i);
  end;
  Write('Результат: ');
  WriteLn(s);
end.
