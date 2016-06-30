//
//  Patient.m
//  Clinic
//
//  Created by reena on 30/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
//-(id)initWithName:(NSString *)name_ message:(NSString *)message_

@implementation Patient
- (id)initWithPatientDetails:(NSString*)name age:(int)age symptoms:(NSArray*)symptom andHealthCard:(bool)card
{
    self = [super init];
    if (self) {
        self.patientName=name;
        self.age=age;
        self.healthCard=card;
        self.symptoms=symptom;
    }
    return self;
}

-(void)visitDoctor:(Doctor*)doctor{
    NSLog(@"You are visiting doctor %@\n specialzed in %@",doctor.doctorName,doctor.specialization);
}
@end