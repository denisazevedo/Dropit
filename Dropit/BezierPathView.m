//
//  Dropit2.m
//  Dropit
//
//  Created by Denis C de Azevedo on 17/02/14.
//  Copyright (c) 2014 Denis C de Azevedo. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

- (void)setPath:(UIBezierPath *)path {
    _path = path;
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [self.path stroke];
}


@end
