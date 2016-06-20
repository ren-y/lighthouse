
/* Program to print the numbers from 1 to 100. For the multiples of 3, print "Fizz" instead of the number and for //the multiples of 5, print "Buzz" instead of the number. For numbers which are multiples of both 3 and 5 print "FizzBuzz"
 
 */

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
