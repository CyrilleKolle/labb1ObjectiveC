//
//  SingletonClass.m
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-16.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "SingletonClass.h"
#import "BgroundViewController.h"
#import <UIKit/UIKit.h>

@implementation SingletonClass


static SingletonClass *instance = nil;

+(id) Instance {
    if(instance == nil){
        instance = [[SingletonClass alloc] init];
 
    }
    return instance;
}


-(void) setData: (UIColor*) value{
    NSLog(@"%@ setdata", value);
    self.colorB = value;
}
- (UIColor *)getData{
    NSLog(@"getdata %@", self.colorB);
    return self.colorB;
}

//[[SingletonClass Instance] setData:@"R"];
@end


    


