//
//  ContactList.m
//  ContactList
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.list=[[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
  /*  if (self.list == nil]) {
        self.contactList=[[NSMutableArray alloc]init];
    } */
  //self.contactList=[[NSMutableArray alloc]init];
  [self.list addObject:newContact];
}


-(void)displayContactList{
    int i=0;
    for (Contact *contact in self.list) {
        NSLog(@"[%i]:<%@>(%@)",i,contact.fullName,contact.email);
        i++;
    }}
    
@end