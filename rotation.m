a=input('alpha');
b=input('beta');
g=input('gamma');

Rx=[cos(a)*cos(b) cos(a)*sin(b)*sin(g)-sin(a)*cos(g) cos(a)*sin(b)*cos(g)+sin(a)*sin(g);sin(a)*cos(b) sin(a)*sin(b)*sin(g)+cos(a)*cos(g) sin(a)*sin(b)*cos(g)-cos(a)*sin(g);-sin(b) cos(b)*sin(g) cos(b)*cos(g)];
disp(Rx);

syms u v
x = cos(u)*sin(v);
y = sin(u)*sin(v);
z = cos(v)*sin(v);

res = Rx*[x;y;z];
fsurf(res(1),res(2),res(3));
axis equal
