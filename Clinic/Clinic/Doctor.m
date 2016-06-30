//
//  Doctor.m
//  Clinic
//
//  Created by reena on 30/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (id)initWithDoctorDetails:(NSString*)name andSpecialization:(NSString*)specialization
{
    self = [super init];
    if (self) {
        self.doctorName=name;
        self.specialization=specialization;
        self.acceptedPatients=[[NSMutableSet alloc]init];
        self.medication=[[NSDictionary alloc]init];
        self.medication=@{
                @"fever":@"Acetaminophen",
                @"headache": @"aspirin",
                @"sinus": @"Vicks",
                @"toothache":@"sleep"
                        };
        
}
    return self;
}
//Accept Patient
-(void)acceptPatient:(Patient *)patient{
    
if(patient.healthCard==true)
{
    [self.acceptedPatients addObject:patient];
    NSLog(@"Patient added in Clinic list\n");
}
    else
    {
        NSLog(@"Error!!! Can't be admiited::No Health Card!!!");
    }

}

-(void)requestMedication:(Patient *)patient{
    if([self.acceptedPatients containsObject:patient])
    {   //for all symptom in NSArray symptons
        NSLog(@"Please take following medication-\n");
        for (NSString *symptom in patient.symptoms) {
            
            if([[self.medication allKeys] containsObject:symptom]) {
                NSLog(@"%@ for \n%@",[self.medication objectForKey:symptom],symptom);
            }
            else
            {  //symption not found
                NSLog(@"Invalid Patient Entry::Can't Prescribe medication");
            }
        }
    }
}
@end
