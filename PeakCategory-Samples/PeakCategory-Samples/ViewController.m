//
//  ViewController.m
//  PeakCategory-Samples
//
//  Created by conis on 12/25/13.
//  Copyright (c) 2013 conis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  //[self.testView drawBorder:  UIViewBorderRight color:[UIColor redColor] width:1];
  
  [self drawLayer];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)clickedButton:(id)sender{
  self.testView.width = 100;
  [self drawLayer];
}

-(void) drawLayer{
  [self.testView resetCanvas];
  [self.testView drawBorder:UIViewBorderAround color:[UIColor redColor] width:1];
  [self.testView drawBorder:UIViewBorderBackslash color:[UIColor blueColor] width:5];
  [self.testView drawBorder:UIViewBorderSlash color:[UIColor redColor] width:5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
