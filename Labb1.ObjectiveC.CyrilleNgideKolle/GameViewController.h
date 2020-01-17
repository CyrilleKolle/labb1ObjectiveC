//
//  GameViewController.h
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-13.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface GameViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *GuessNumber;

@property (weak, nonatomic) IBOutlet UILabel *RandomNumber;
@property (weak, nonatomic) IBOutlet UILabel *winOrLoseText;

 -(IBAction)sliderValueChanged:(UISlider *)sender;

@property (weak, nonatomic) IBOutlet UIButton *GuessButton;






@end

NS_ASSUME_NONNULL_END
