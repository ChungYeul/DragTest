//
//  ViewController.m
//  DragTest
//
//  Created by T on 2014. 1. 16..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *dragView;

@end

@implementation ViewController
- (IBAction)moveView:(UIPanGestureRecognizer *)sender {
    // dragView의 좌표
    CGPoint touchPoint = [sender locationInView:self.view];
    if (sender.state == UIGestureRecognizerStateBegan) {
    [UIView beginAnimations:nil context:nil];
    self.dragView.center = touchPoint;
    [UIView commitAnimations];
    } else {
    self.dragView.center = touchPoint;
    }
//    NSLog(@"M");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.dragView.center = CGPointMake(0, 0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
