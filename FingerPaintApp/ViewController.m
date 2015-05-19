//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Oliver Andrews on 2015-05-19.
//  Copyright (c) 2015 Oliver Andrews. All rights reserved.
//

#import "ViewController.h"
#import "View.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet View *canvas;
@property (assign, nonatomic) int paintColour;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.canvas.delegate = self;
    self.canvas.userInteractionEnabled = YES;
    // Do any additional setup after loading the view, typically from a nib.
    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(paintSomething:)];
    [self.canvas addGestureRecognizer:pan];
    self.paths = @[
                   [UIBezierPath bezierPath],
                   [UIBezierPath bezierPath],
                   [UIBezierPath bezierPath],
                   [UIBezierPath bezierPath],
                   [UIBezierPath bezierPath],
                   [UIBezierPath bezierPath]
                   ];
    self.colours = @[
                     [UIColor redColor],
                     [UIColor orangeColor],
                     [UIColor yellowColor],
                     [UIColor greenColor],
                     [UIColor blueColor],
                     [UIColor purpleColor]
                     ];
    self.path = [UIBezierPath bezierPath];
    self.paintColour = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)redButton:(id)sender {
    self.paintColour = 0;
}
- (IBAction)orangeButton:(id)sender {
    self.paintColour = 1;
}
- (IBAction)yellowButton:(id)sender {
    self.paintColour = 2;
}
- (IBAction)greenButton:(id)sender {
    self.paintColour = 3;
}
- (IBAction)blueButton:(id)sender {
    self.paintColour = 4;
}
- (IBAction)purpleButton:(id)sender {
    self.paintColour = 5;
}

- (void)paintSomething:(UIGestureRecognizer*) gesture{
    if (gesture.state == UIGestureRecognizerStateBegan){
        [self.paths[self.paintColour] moveToPoint:[gesture locationInView:self.canvas]];
    }
    if (gesture.state == UIGestureRecognizerStateChanged){
        [self.paths[self.paintColour] addLineToPoint:[gesture locationInView:self.canvas]];
    }

    [self.canvas setNeedsDisplay];
}

- (UIBezierPath*)returnPath{
    return self.path;
}

- (NSArray*)returnPaths{
    return self.paths;
}

- (NSArray*)returnColours{
    return self.colours;
}


@end
