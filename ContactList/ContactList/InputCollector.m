//
//  InputCollector.m
//  ContactList
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@",promptString);
    char userInput[255];
    // printf("Enter your choice");
    fgets(userInput,255,stdin);
    NSString *outputString=[[NSString stringWithUTF8String:userInput] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return outputString;
}
@end

