//
//  PaintProtocol.h
//  FingerPaintApp
//
//  Created by Oliver Andrews on 2015-05-19.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaintProtocol <NSObject>

- (UIBezierPath*)returnPath;
- (NSArray*)returnPaths;
- (NSArray*)returnColours;

@end
