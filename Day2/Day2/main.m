//
//  main.m
//  Day2
//
//  Created by reena on 28/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//Program to calculate area of Box and no. of Boxes in another box

#import <Foundation/Foundation.h>
#import "Box.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *bigBox=[[Box alloc]initBoxWithHeight:100 width:10 andLength:1];
        float bigBoxVolume=[bigBox calculateVolume];
        NSLog(@"Volume of box is: %f",bigBoxVolume);
        
        Box *box=[[Box alloc]initBoxWithHeight:10 width:10 andLength:1];
        float boxVolume=[box calculateVolume];
        NSLog(@"Volume of box is: %f",boxVolume);
        
        [bigBox noOfBoxesFitInBox:bigBoxVolume smallBoxOfVolume:boxVolume];
    }
    return 0;
}
