//
//  InputCollector.h
//  ContactList
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface InputCollector : NSObject
-(NSString *)inputForPrompt:(NSString *)promptString;

@end
