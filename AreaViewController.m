//
//  AreaViewController.m
//  Convertera
//
//  Created by Apurv on 14/03/14.
//  Copyright (c) 2014 Apurv. All rights reserved.
//

#import "AreaViewController.h"

@interface AreaViewController ()

@end

@implementation AreaViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.areaResult.text = @"Hi! Enter a Value!";
    
    [self.areaSwitch setOn:YES];
    self.areaSwitchLabel.text=@"Acres To Sq Kms";
    
}


- (IBAction)areaToggleSwitch:(id)sender {
    
    if (self.areaSwitch.on) {
        self.areaSwitchLabel.text=@"Acres To Sq Kms";
    }
    else {
        self.areaSwitchLabel.text=@"Sq Kms to Acres";
    }
    
}

- (IBAction)convert:(id)sender {
    
    if (self.areaSwitch.on) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        
        NSNumber *acres = [formatter numberFromString:self.areaInput.text];
        
        NSNumber *sqkms = [NSNumber numberWithFloat:([acres floatValue]/247.105)];
        
        [formatter setMaximumFractionDigits:2];
        
        self.areaResult.text = [formatter stringFromNumber:sqkms];
    
    }
    else {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        
        NSNumber *sqkms = [formatter numberFromString:self.areaInput.text];
        
        NSNumber *acres = [NSNumber numberWithFloat:([sqkms floatValue]*247.105)];
        
        [formatter setMaximumFractionDigits:2];
        
        self.areaResult.text = [formatter stringFromNumber:acres];
        
    }
    
    [self.areaInput resignFirstResponder];
}
@end
