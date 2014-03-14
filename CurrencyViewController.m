//
//  CurrencyViewController.m
//  Convertera
//
//  Created by Apurv on 14/03/14.
//  Copyright (c) 2014 Apurv. All rights reserved.
//

#import "CurrencyViewController.h"

@interface CurrencyViewController ()

@end

@implementation CurrencyViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.currencyResult.text=@"Hi! Enter an amount!";
	
    [self.currencySwitch setOn:YES];
    
    self.currencyLabel.text=@"US$ to ₹";

}



- (IBAction)currencyToggle:(id)sender {
    
    if(self.currencySwitch.on) {
        self.currencyLabel.text=@"US$ to ₹";
    }
    else {
        self.currencyLabel.text=@"GB£ to ₹";
    }
    
}

- (IBAction)currencyConvert:(id)sender {
    
    if (self.currencySwitch.on) {
        
        NSURL *url = [NSURL URLWithString:@"http://download.finance.yahoo.com/d/quotes.csv?s=USDINR=X&f=nl1d1t1"];
        
        NSArray *currencyData = [[[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil] stringByReplacingOccurrencesOfString:@"\"" withString:@""]  componentsSeparatedByString:@","];
        
        NSLog(@"%@",currencyData[1]);
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        
        NSNumber *dollarRate = [formatter numberFromString:currencyData[1]];
        
        NSNumber *rupeeAmount = [formatter numberFromString:self.currencyInput.text];
        
        NSNumber *result = [NSNumber numberWithFloat:([rupeeAmount floatValue]*[dollarRate floatValue])];
        
        [formatter setMaximumFractionDigits:2];
        
        self.currencyResult.text = [[formatter stringFromNumber:result] stringByAppendingString:@"₹"];
        
    }
    else {
        NSURL *url = [NSURL URLWithString:@"http://download.finance.yahoo.com/d/quotes.csv?s=GBPINR=X&f=nl1d1t1"];
        
        NSArray *currencyData = [[[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil] stringByReplacingOccurrencesOfString:@"\"" withString:@""]  componentsSeparatedByString:@","];
        
        NSLog(@"%@",currencyData[1]);
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        
        NSNumber *dollarRate = [formatter numberFromString:currencyData[1]];
        
        NSNumber *rupeeAmount = [formatter numberFromString:self.currencyInput.text];
        
        NSNumber *result = [NSNumber numberWithFloat:([rupeeAmount floatValue]*[dollarRate floatValue])];
        
        [formatter setMaximumFractionDigits:2];
        
        self.currencyResult.text = [[formatter stringFromNumber:result] stringByAppendingString:@" ₹"];
    }

    
}
@end
