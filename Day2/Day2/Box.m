//
//  Box.m
//  Day2
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "Box.h"

@implementation Box


-(id)initBoxWithHeight:(float)height width:(float)width andLength:(float)length{
    self = [super init];
    if (self) {
        self.height=height;
        self.width=width;
        self.length=length;
    }
    return self;
}


-(float)calculateVolumeWith:(float)height width:(float)width length:(float)length{
    float boxVolume=height*width*length;
    return boxVolume;
}

-(float)calculateVolume{
    float boxVolume=self.height*self.width*self.length;
    return boxVolume;
}


-(void)noOfBoxesFitInBox:(float)BigBoxOfVolume smallBoxOfVolume:(float)smallBoxVolume{
    
    if(BigBoxOfVolume>smallBoxVolume)
    {
        
        int noOfBoxesFitInBox=(int)BigBoxOfVolume/smallBoxVolume;
        NSLog(@"Number of Boxes that fit in Box : %i",noOfBoxesFitInBox);
        
    }
    else if(BigBoxOfVolume==smallBoxVolume)
    {
        
        NSLog(@"Boxes are equal");
        
    }
    else{
        NSLog(@"Big box is actually smaller");
        
    }
}
@end