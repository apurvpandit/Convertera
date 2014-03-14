//
//  AreaViewController.h
//  Convertera
//
//  Created by Apurv on 14/03/14.
//  Copyright (c) 2014 Apurv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AreaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *areaResult;
@property (weak, nonatomic) IBOutlet UITextField *areaInput;
@property (weak, nonatomic) IBOutlet UILabel *areaSwitchLabel;
@property (weak, nonatomic) IBOutlet UISwitch *areaSwitch;
- (IBAction)areaToggleSwitch:(id)sender;
- (IBAction)convert:(id)sender;

@end
