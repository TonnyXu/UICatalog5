//
//  TXToolBarViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXToolBarViewController.h"

@interface TXToolBarViewController ()

@end

@implementation TXToolBarViewController
@synthesize myToolbar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
  [self setMyToolbar:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)segmentValueChanged:(UISegmentedControl *)sender {
  NSLog(@"segment value: %d", sender.selectedSegmentIndex);
  
  if (sender.selectedSegmentIndex == 0) {
    self.myToolbar.barStyle = UIBarStyleDefault;
  }else if (sender.selectedSegmentIndex == 1) {
    self.myToolbar.barStyle = UIBarStyleBlack;
  }else if (sender.selectedSegmentIndex == 2) {
    self.myToolbar.barStyle = UIBarStyleBlackTranslucent;
  }
  
}
@end
