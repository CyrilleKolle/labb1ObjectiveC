//
//  BgroundViewController.m
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-14.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "BgroundViewController.h"
#import "SingletonClass.h"

@interface BgroundViewController ()

@end

@implementation BgroundViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

*/
-(void) changeAppColor: (UIColor *)color{
   
    self.view.backgroundColor = color;
  
    [[SingletonClass Instance] setData:color];
    
}

-(void)viewWillAppear:(BOOL)animated{
   
     self.view.backgroundColor = [[SingletonClass Instance] getData];
}

- (IBAction)switchButton:(id)sender {
    if (self.switchProperty.on){
         [self changeAppColor:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1]];
    }else{
        [self changeAppColor: [[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1]];
        [[SingletonClass Instance]getData];
    }
}
  
    @end
    
