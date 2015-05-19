//
//  View.m
//  FingerPaintApp
//
//  Created by Oliver Andrews on 2015-05-19.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import "View.h"

@implementation View

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    for (UIBezierPath* path in [self.delegate returnPaths]){
        UIBezierPath* draw = path;
        int colour = (int)[[self.delegate returnPaths] indexOfObject:path];
        
        [[self.delegate returnColours][colour] setStroke];
        [draw stroke];
    }
}

@end
