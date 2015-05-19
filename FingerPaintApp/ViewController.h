//
//  ViewController.h
//  FingerPaintApp
//
//  Created by Oliver Andrews on 2015-05-19.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaintProtocol.h"

@interface ViewController : UIViewController<PaintProtocol>

@property (strong, nonatomic) UIBezierPath* path;
@property (strong, nonatomic) NSArray* paths;
@property (strong, nonatomic) NSArray* colours;


@end

