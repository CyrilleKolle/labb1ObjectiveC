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
 
    self.view.backgroundColor = [[SingletonClass Instance]getData];
    
}

-(void)viewWillAppear:(BOOL)animated{
     self.view.backgroundColor = [[SingletonClass Instance] getData];
}


@end
    
