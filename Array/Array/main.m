//
//  main.m
//  Array to print maximum value stored in it
//
//  Created by reena on 20/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSArray *numberArray = [NSArray arrayWithObjects:[NSNumber numberWithInt:10], [NSNumber numberWithInt:20], [NSNumber numberWithInt:1000], [NSNumber numberWithInt:1986],[NSNumber numberWithInt:1],[NSNumber numberWithInt:150],[NSNumber numberWithInt:4],nil];
        
        int max = [[numberArray valueForKeyPath:@"@max.intValue"] intValue];
        NSLog(@"Highest number: %i",max);
        

    }
    return 0;
}
