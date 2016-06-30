//
//  Patient.h
//  Clinic
//
//  Created by reena on 30/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic,strong) NSString *patientName;
@property int age;
@property (nonatomic,strong) NSArray *symptoms;
@property bool healthCard;

- (id)initWithPatientDetails:(NSString*)name age:(int)age symptoms:(NSArray*)symptom andHealthCard:(bool)card;

-(void)visitDoctor:(Doctor*)doctor;


@end
