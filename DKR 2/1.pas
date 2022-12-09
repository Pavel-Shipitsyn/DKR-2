var i: integer;
x: array[1..100] of integer;
f: integer;
begin
for i:=1 to 10 do
begin
  x[i]:= random(26)-15;
  write(x[i]:4);
end;
for i:=2 to 10 do
if x[i]<x[i-1] then f:=1;
if f=0 then writeln(' yes')else writeln(' no');
end.