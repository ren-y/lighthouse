#include<stdio.h>
int main(){
for(int i=1; i<=100; i++){
    
if(i%3==0 && i%5==0)
{
printf("\nFizzBuzz\n");}
else if(i%3==0)
{
printf("\nFizz\n");
}
else if(i%5==0){
printf("\nBuzz\n");
}
else
{
printf("\n%d\n",i);
}
}

return 0;
}
