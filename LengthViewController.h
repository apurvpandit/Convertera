//
//  LengthViewController.h
//  Convertera
//
//  Created by Apurv on 14/03/14.
//  Copyright (c) 2014 Apurv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LengthViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lengthResultLabel;
@property (weak, nonatomic) IBOutlet UITextField *lengthInputField;
@property (weak, nonatomic) IBOutlet UILabel *lengthSwitchLabel;
@property (weak, nonatomic) IBOutlet UISwitch *lengthSwitchState;
- (IBAction)lengthUnitSwitch:(id)sender;
- (IBAction)convert:(id)sender;



@end

