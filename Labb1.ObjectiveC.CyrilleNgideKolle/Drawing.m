//
//  Drawing.m
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-17.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "Drawing.h"

@implementation Drawing


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


-(void)drawRect:(CGRect)rect{
    
    CGSize rectaSize = rect.size;
    
    CGRect rectangle = CGRectMake(0, 0, rectaSize.width, rectaSize.height);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rectangle];
    
    [self.squareColor setStroke];
    
    path.lineWidth = self.squareLineWidth;
    [path stroke];

}
    @end
    
