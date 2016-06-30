//
//  Doctor.h
//  Clinic
//
//  Created by reena on 30/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic ,strong) NSString *doctorName;
@property (nonatomic,strong)NSString *specialization;
@property (nonatomic,strong) NSMutableSet *acceptedPatients;

@property (nonatomic,strong) NSDictionary *medication;

- (id)initWithDoctorDetails:(NSString*)name andSpecialization:(NSString*)specialization;

-(void)acceptPatient:(Patient *)patient;
-(void)requestMedication:(Patient *)patient;
@end
