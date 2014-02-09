//
//  DropitViewController.m
//  Dropit
//
//  Created by Denis C de Azevedo on 09/02/14.
//  Copyright (c) 2014 Denis C de Azevedo. All rights reserved.
//

#import "DropitViewController.h"
#import "DropitBehavior.h"

@interface DropitViewController ()

@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong, nonatomic) UIDynamicAnimator *animator;
@property (strong, nonatomic) DropitBehavior *dropipBehavior;
@end

@implementation DropitViewController

static const CGSize DROP_SIZE = {40, 40};

- (UIDynamicAnimator *)animator {
    if (!_animator) {
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
    }
    return _animator;
}

- (DropitBehavior *)dropipBehavior {
    if (!_dropipBehavior) {
        _dropipBehavior = [[DropitBehavior alloc] init];
        [self.animator addBehavior:_dropipBehavior];
    }
    return _dropipBehavior;
}

- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self drop];
}

- (void)drop {
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    
    int x = (arc4random() % (int)self.gameView.bounds.size.width) / DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView *dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
    
    [self.dropipBehavior addItem:dropView];
}

- (UIColor *)randomColor {
    switch (arc4random()%5) {
        case 0: return [UIColor greenColor];
        case 1: return [UIColor blueColor];
        case 2: return [UIColor orangeColor];
        case 3: return [UIColor redColor];
        case 4: return [UIColor purpleColor];
    }
    return [UIColor blueColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
