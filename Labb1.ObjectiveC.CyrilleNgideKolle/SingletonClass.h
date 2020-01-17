//
//  SingletonClass.h
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-16.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface SingletonClass : NSObject

 @property(nonatomic)   UIColor *colorB;

+(id) Instance;
-(void) setData: (UIColor*) value;

-(UIColor*) getData;

@end

NS_ASSUME_NONNULL_END
