//
//  ContactList.h
//  ContactList
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *list;

- (void)addContact:(Contact *)newContact;
- (void)displayContactList;

@end
