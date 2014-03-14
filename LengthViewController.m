//
//  LengthViewController.m
//  Convertera
//
//  Created by Apurv on 14/03/14.
//  Copyright (c) 2014 Apurv. All rights reserved.
//

#import "LengthViewController.h"

@interface LengthViewController ()

@end

@implementation LengthViewController

/* - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
} */

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.lengthResultLabel.text=@"Hi! Enter a Value!";
   
    [self.lengthSwitchState setOn:YES];
    self.lengthSwitchLabel.text = @"Meters to Feet";
    
}




- (IBAction)lengthUnitSwitch:(id)sender {
    
    if(self.lengthSwitchState.on) {
        self.lengthSwitchLabel.text = @"Meters to Feet";
    }
    else {
        self.lengthSwitchLabel.text = @"Feet to Meters";
    }
   
}

- (IBAction)convert:(id)sender {
    
    if (self.lengthSwitchState.on) {
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        
        NSNumber *metersValue = [formatter numberFromString:self.lengthInputField.text];
        
        NSNumber *feetValue = [NSNumber numberWithFloat:([metersValue floatValue]*3.28084)];
        
        [formatter setMaximumFractionDigits:2];
        
        self.lengthResultLabel.text = [formatter stringFromNumber:feetValue];
        
    }
    else {
     
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        
        NSNumber *feetValue = [formatter numberFromString:self.lengthInputField.text];
        
        NSNumber *metersValue = [NSNumber numberWithFloat:([feetValue floatValue]/3.28084)];
        
        [formatter setMaximumFractionDigits:2];
        
        self.lengthResultLabel.text = [formatter stringFromNumber:metersValue];
    }
    
    [self.lengthInputField resignFirstResponder];
}


@end
