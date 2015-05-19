//
//  View.h
//  FingerPaintApp
//
//  Created by Oliver Andrews on 2015-05-19.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaintProtocol.h"

@interface View : UIView
@property (strong, nonatomic) id<PaintProtocol> delegate;

@end
