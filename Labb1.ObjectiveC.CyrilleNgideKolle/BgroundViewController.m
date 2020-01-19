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
    
   if([[[NSUserDefaults standardUserDefaults] valueForKey:@"switch"]isEqualToString:@"on"]){
        self.switchProperty.on=YES;
    }else{
        self.switchProperty.on = NO;
    }
}


    -(void)switchState{
    if(self.switchProperty.on){
        [[NSUserDefaults standardUserDefaults]setObject:@"on" forKey:@"switch"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:@"off" forKey:@"switch"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}

    - (IBAction)switchButton:(UISwitch*)sender{
       
        if (self.switchProperty.on && sender.on){
             [self changeAppColor:[[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1]];
            self.switchProperty.tintColor = [UIColor whiteColor];
             [self switchState];
            [[NSUserDefaults standardUserDefaults]objectForKey:@"switch"];
            
        }else{
            [self changeAppColor: [[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1]];
            [[SingletonClass Instance]getData];
            self.switchProperty.tintColor =[UIColor redColor];
             [self switchState];
              [[NSUserDefaults standardUserDefaults]objectForKey:@"switch"];
            
        }
        
    }

    @end
  
    

    
