//
//  Car.h
//  assignment3.5
//
//  Created by reena on 16/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *model;

-(void) drive;
-(id) initWithModel:(NSString*) model;
@end
