//
//  CurrencyViewController.h
//  Convertera
//
//  Created by Apurv on 14/03/14.
//  Copyright (c) 2014 Apurv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrencyViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *currencyResult;
@property (weak, nonatomic) IBOutlet UILabel *currencyLabel;
@property (weak, nonatomic) IBOutlet UITextField *currencyInput;
@property (weak, nonatomic) IBOutlet UISwitch *currencySwitch;
- (IBAction)currencyToggle:(id)sender;
- (IBAction)currencyConvert:(id)sender;

@end
