//
//  main.m
//  Clinic
//
//  Created by reena on 30/06/16.
//  Copyright © 2016 Reena. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Patient *patient=[[Patient alloc]initWithPatientDetails:@"Tiara D Patient" age:12 symptoms:@[@"fever",@"headache",@"toothache",@"sinus"] andHealthCard:true];
        
        Doctor *doctor=[[Doctor alloc]initWithDoctorDetails:@"John D Doc" andSpecialization:@"General Physicist"];
        
        [patient visitDoctor:doctor];
        [doctor acceptPatient:patient];
        [doctor requestMedication:patient];
        
        NSLog(@"Patient Attended");
        
        
    }
    return 0;
}
