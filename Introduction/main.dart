void main() {
  int a=0;
  int b=1;
  int i=1;
  
  
do{
  print(a);
  int next=a+b;
  a=b;
  b=next;
  i++;
}while(i<10);
}