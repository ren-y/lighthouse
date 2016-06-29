//
//  Box.h
//  Day2
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;

-(id)initBoxWithHeight:(float)height width:(float)width andLength:(float)length;
-(float)calculateVolume;
-(void)noOfBoxesFitInBox:(float)BigBoxOfVolume smallBoxOfVolume:(float)smallBoxVolume;

@end