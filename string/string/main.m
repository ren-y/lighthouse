//
//  main.m
//  string
//
//  Created by reena on 27/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//Program to manipulate NSString

typedef enum{
    Uppercase=1,
    Lowercase,
    Numberize,
    Canadianize,
    Respond,
    DeSpaceIt,
    Exit,
    
}operations;

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChar[255];
       
        //Get user input string
        printf("Enter your string:\n");
        fgets(inputChar, 255, stdin);
        
        //Print user input string
        printf("Your input string is -> %s\n",inputChar);
        
        
        //Convert to string and remove newline & whitespaces
        NSString *inputString=[[NSString stringWithUTF8String:inputChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *test=inputString;
        operations choice;
        do{
            NSLog(@"================================================================");
            NSLog(@"**************Manipulate your string**************\n");
            NSLog(@"1.Uppercase");
            NSLog(@"2.Lowercase");
            NSLog(@"3.Numberize");
            NSLog(@"4.Canadianize");
            NSLog(@"5.Respond");
            NSLog(@"6.De-Space-It");
            NSLog(@"7.Exit");
            
            printf("Select your option:\n");
            scanf("%d",&choice);
            
            //Switch to give user options to manipulate string in different ways

            switch(choice){
                case Uppercase:
                {
                    test=[inputString uppercaseString];
                    NSLog(@"Upper case string is %@:\n",test);
                }
                    break;
                    
                case Lowercase:
                {
                    
                    test=[inputString lowercaseString];
                    NSLog(@"Lower case string is -> %@:\n",test);
                }
                    break;
                    
                case Numberize:
                {
                    
                    
                    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
                    
                    NSNumber* number = [numberFormatter numberFromString:inputString];
                    
                    if (number != nil) {
                        NSLog(@"Number in string is :%@",number);
                    }
                    else{
                    NSLog(@"%@ ---> is not numeric", inputString);
                    }
                }
                    break;
                    
                case Canadianize:
                {
                    test=[inputString stringByAppendingString: @" eh"];
                    NSLog(@"Canadianized string is -> %@",test);
                }
                    break;
                    
                case Respond:
                {
                    
                    if([inputString hasSuffix:@"?"])
                    {
                        NSLog(@"I don't know");
                    }
                    else if([inputString hasSuffix:@"!"])
                    {
                        NSLog(@"Whoa, calm down!!!");
                    }
                    
                    else
                    {
                        NSLog(@"Your string has neither '!' or '?'");
                    }
                }
                    break;
                    
                case DeSpaceIt:
                {
                    test=[inputString stringByReplacingOccurrencesOfString:@" " withString:@""];
                    NSLog(@"De-spaced string is %@ :\n",test);
                }
                    break;
                case Exit:
                    
                    NSLog(@"You are about to exit,thanks!!!");
                    break;
                default:
                    NSLog(@"Invalid choice");
                    break;
            }
            
        }while(choice!=7);
    }
    return 0;
}

