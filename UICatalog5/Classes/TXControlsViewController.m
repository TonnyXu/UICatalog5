//
//  TXControlsViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXControlsViewController.h"

@interface TXControlsViewController ()

@end

@implementation TXControlsViewController
@synthesize myIndicator;
@synthesize myProgress;
@synthesize myStepper;
@synthesize myPageControl;
@synthesize customSlider;
@synthesize mySlider;
@synthesize mySwitch;

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];

  [self.customSlider setMinimumTrackImage:[[UIImage imageNamed:@"yellowslide.png"] stretchableImageWithLeftCapWidth:10 topCapHeight:0] 
                                 forState:UIControlStateNormal];
  [self.customSlider setMaximumTrackImage:[[UIImage imageNamed:@"orangeslide.png"] stretchableImageWithLeftCapWidth:10 topCapHeight:0] 
                                 forState:UIControlStateNormal];
  [self.customSlider setThumbImage:[UIImage imageNamed:@"slider_ball.png"] 
                          forState:UIControlStateNormal];
  
}

- (void)viewDidUnload
{
  [self setMySwitch:nil];
  [self setMySlider:nil];
  [self setCustomSlider:nil];
  [self setMyPageControl:nil];
  [self setMyIndicator:nil];
  [self setMyProgress:nil];
  [self setMyStepper:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
  // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)switchValueChanged:(id)sender {
  UISwitch *theSwitch = (UISwitch *)sender;
  
  NSLog(@"the type of sender is: %@", NSStringFromClass([sender class]));
  
  NSLog(@"theSwitch Value = %@", theSwitch.on?@"YES":@"NO");
}
- (IBAction)mySliderValueChanged:(id)sender {
  UISlider *theSlider = (UISlider *)sender;
  
  NSLog(@"theSlider value: %f", theSlider.value);
  
}
- (IBAction)customSliderValueChanged:(UISlider *)sender {
  NSLog(@"Custom slider value: %f", sender.value);
}
- (IBAction)myPageControlValueChanged:(UIPageControl *)sender {
  
  NSLog(@"page control value: %d", sender.currentPage);
}
- (IBAction)myStepperValueChanged:(UIStepper *)sender {
  NSLog(@"sender.value = %f", sender.value);
}

- (IBAction)tintedAction:(UIBarButtonItem *)sender {
  
  NSLog(@"Should we set tintcolor to all the controls?");
  
  static int currentValue = 0;
  currentValue++;
  UIColor *tColor = nil;
  if (currentValue % 2 == 0) {
    tColor = nil;
  }else {
    tColor = [UIColor redColor];
  }
  
  self.mySwitch.onTintColor = tColor;
  self.mySlider.thumbTintColor = tColor;
  self.mySlider.minimumTrackTintColor = tColor;
  
  self.myIndicator.color = tColor;
  
  int randomValue = arc4random() % 100;
  self.myProgress.progress = randomValue/100.0;
  self.myProgress.progressTintColor = tColor;
  
}
@end
