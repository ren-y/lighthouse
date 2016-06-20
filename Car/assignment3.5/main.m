//
//  main.m
//  assignment3.5
//
//  Created by reena on 16/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Car *nissan =[[Car alloc]initWithModel:@"Rouge"];
        [nissan drive];
        
        Toyota *toyota =[[Toyota alloc] init];
        [toyota drive];
        
          }
    
    return 0;
}
