//
//  Toyota.m
//  assignment3.5
//
//  Created by reena on 16/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota

/* -(id) initWithModel:(NSString *)model{

    model=@"Prius";
    return self;
}
*/

- (id)init{
    self = [super init];
    if (self) {
        self.model= @"Prius";
    }
    return self;
}
@end
