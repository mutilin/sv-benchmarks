extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern int __VERIFIER_nondet_int();

int sep (int x[20])
{
  long long ret =0;
  for(int i=0;i<20;i++)
  {
    if(x[i]%2==0)
      ret++;
    else
      ret--;
  }
    return ret;
}


int main ()
{
  int x[20];
  int temp;
  int ret;
  int ret2;
  int ret5;

  for (int i = 0; i < 20; i++) {
    x[i] = __VERIFIER_nondet_int();
  }

  ret = sep(x);

  temp=x[0];x[0] = x[1]; x[1] = temp;
  ret2 = sep(x);
  temp=x[0];
  for(int i =0 ; i<20 -1; i++){
     x[i] = x[i+1];
  }
  x[20 -1] = temp;
  ret5 = sep(x);

  if(ret != ret2 || ret !=ret5){
    __VERIFIER_error();
  }
  return 1;
}
