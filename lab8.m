
clc;
clear all;
display('RSA Keys');
p=input('enter the 1st prime number=');
q=input('enter the 2nd prime number=');
n=p*q;  %%find the modulus to generate RSA keys
totient=(p-1)*(q-1); %%To calculate totient
printf('totient of(%d) is =%d',n,totient);
%%To find e as public key exponent%%
%%Check 1<e<totient(n) and e is co prime to totient(n)%%
x=2;
e=1;
while x >1
  e=e+1;
  x=gcd(e,totient); %%to find greaest common division
end
printf('\npublic key is =%d',e);
%%to calculate private key as d
x1=1;
d=0;
while i>0
  d=d+1;
  x1=e*d;
  x1=mod(x1,totient);%% to statisfy congruence relation
  if x1==1
    i=0;
  end
end
printf('\nprivate key is=%d\n',d);
disp("Input Message");
message=("Input mesage is generated");
disp(message);
m=double(message);
disp(m);
len=length(m);
code=mod(m.^e,n);
disp("message encrypted");
disp(code);
%after thus is not working
m2=mod(code.^d,n)+n*3;%%decryption of message
m3=double(m2);
disp("Output Message");
disp(m3);
message=(" Input message decrypted");
disp(message);
