//
//  ViewController.m
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-09.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//
#import "ViewController.h"
#import "SingletonClass.h"
#import "BgroundViewController.h"




@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1];
    
}

-(void)viewWillAppear:(BOOL)animated{
     self.view.backgroundColor = [[SingletonClass Instance] getData];
}


@end
    
