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
value=0;
cd=0;
while(cd~=1||value==0)
num=randint(1,1,n);
e=randint(1,1,[1 num]);%%generate number between 1 to num
value=isprime(e); %%to check prime number
cd=gcd(e,totient); %% to find e is phi no share factor than 1
end
printf('\npublic key is=%d',e);
%% To find d as private key exponent%
value1=0;
d=0;
while(value1~=1); %%loop continue until value is equal to 1
d=d+1;
a=d*e;
value1=mod(a,totient);%% to statisfy congruence relation
end
printf('\nprivate key is=%d\n',d);
disp("Input Message");
message=("this is me");
disp(message);
m=double(message);
disp(m);
len=length(m);
for ii=1:len
  code(ii)=mod(m(ii)^e,n);
end
disp("message encrypted");
disp(code);
%after thus is not working
for i=1:len;
a=mod(code(i)^p,n);
b=mod(code(i)^q,n);
m2(i)=mod(a^3*b,n)
end ;

