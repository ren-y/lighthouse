//
//  main.m
//  ContactList
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//Program to create Contact list

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Contact *contact=[[Contact alloc]init];
        InputCollector *input=[[InputCollector alloc]init];
        NSString *userInput=[input inputForPrompt:@"What would you like do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
        
        NSLog(@"%@",userInput);
        
        
        if([userInput isEqualToString:@"quit"])
        {
            NSLog(@"Bye...");
            exit(0); //as doesn't clear
        }
        
        else if ([userInput isEqual:@"new"]) {
            
            ContactList *list=[[ContactList alloc]init];
            do{
                NSLog(@"Enter the contact details");
                NSString *fullname = [input inputForPrompt:@"Enter your fullname :"];
                
                NSString *email=[input inputForPrompt:@"Enter Email id:"];
                NSLog(@"Details entered: %@ %@", fullname,email);
                Contact *contact = [[Contact alloc] init];
                contact.fullName = fullname;
                contact.email = email;
                
                
                [list addContact:contact];
                NSString *exitApp =[input inputForPrompt:@"Do you want to exit? yes/no"];
                
                if([exitApp isEqual:@"yes"])
                {
                    [list displayContactList];
                    NSLog(@"Bye...");
                    exit(0);
                }
                
            }
            while (1);
        }
    }
}
