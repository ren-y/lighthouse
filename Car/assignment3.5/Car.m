//
//  Car.m
//  assignment3.5
//
//  Created by reena on 16/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void) drive{
    NSLog(@"Model of the car is : %@", self.model);
}

/*
-(id) initWithModel:(NSString*) model{
    
    self.model=model;
    return self;
    
}
 */

- (id)initWithModel:(NSString *)model{
    self = [super init];
    if (self) {
        _model=model;
    }
    return self;
}
@end
