//
//  BgroundViewController.h
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-14.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BgroundViewController : UIViewController

@property(nonatomic, getter=isOn) BOOL on;
@property (weak, nonatomic) IBOutlet UIView *BackgroundView;

@property (weak, nonatomic) IBOutlet UISwitch *switchProperty;


-(void) changeAppColor: (UIColor *)color;
-(void)switchState;
- (IBAction)switchButton:(UISwitch*)sender;


@end

NS_ASSUME_NONNULL_END
