//
//  TXButtonsTableViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXButtonsTableViewController.h"

@interface TXButtonsTableViewController ()

@end

@implementation TXButtonsTableViewController
@synthesize firstButton;
@synthesize secondButton;

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

  NSLog(@"self.firstButton = %@", self.firstButton);
  NSLog(@"self.secondButton = %@", self.secondButton);  
  
  UIImage *whiteButton = [UIImage imageNamed:@"whiteButton"];
  UIImage *blueButton = [UIImage imageNamed:@"blueButton"];
  
  UIImage *whiteButtonStretched = [whiteButton stretchableImageWithLeftCapWidth:12 
                                                                   topCapHeight:0];
  UIImage *blueButtonStretched = [blueButton stretchableImageWithLeftCapWidth:12 
                                                                 topCapHeight:0];
  [self.firstButton setBackgroundImage:whiteButtonStretched 
                              forState:UIControlStateNormal];
  [self.firstButton setBackgroundImage:blueButtonStretched 
                              forState:UIControlStateHighlighted];
  
  [self.secondButton setBackgroundImage:whiteButtonStretched
                               forState:UIControlStateNormal];
  [self.secondButton setBackgroundImage:blueButtonStretched
                               forState:UIControlStateHighlighted];
  
}

- (void)viewDidUnload
{
    [self setFirstButton:nil];
    [self setSecondButton:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
  // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
