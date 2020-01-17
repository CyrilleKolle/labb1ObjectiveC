//
//  GameViewController.m
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-13.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "GameViewController.h"
#import "SingletonClass.h"

@interface GameViewController ()


@end

@implementation GameViewController

- (void)sliderValueChanged:(UISlider *)sender{
    self.GuessNumber.text =[NSString stringWithFormat:@"%0.0f", sender.value];
}


- (void)GuessButton:(id)sender{
    int random = arc4random_uniform(10);
    self.RandomNumber.text =[NSString stringWithFormat:@"%d", random];
    if ([self.GuessNumber.text isEqualToString:self.RandomNumber.text]) {
        
        self.winOrLoseText.text = [NSString stringWithFormat:@"%@", @"You win"];
        self.GuessNumber.text =[NSString stringWithFormat:@"%@", @"YES!"];
        self.RandomNumber.text =[NSString stringWithFormat:@"%@", @"YES!"];
        
    }else {
        self.winOrLoseText.text = [NSString stringWithFormat:@"%@", @"You suck"];
    }
}


-(void)viewWillAppear:(BOOL)animated{
    UIColor *c = [[SingletonClass Instance] getData];
    NSLog(@"%@ Color", c);
     self.view.backgroundColor = [[SingletonClass Instance] getData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[SingletonClass Instance] getData];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
