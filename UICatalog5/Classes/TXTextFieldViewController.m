//
//  TXTextFieldViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXTextFieldViewController.h"

@interface TXTextFieldViewController ()

@end

@implementation TXTextFieldViewController
@synthesize firstTextField;
@synthesize secondTextField;
@synthesize thirdTextField;
@synthesize forthTextField;

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
  
  self.thirdTextField.leftViewMode = UITextFieldViewModeAlways;
  self.thirdTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"segment_check.png"]];
  
}

- (void)viewDidUnload
{
  [self setFirstTextField:nil];
  [self setSecondTextField:nil];
  [self setThirdTextField:nil];
  [self setForthTextField:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
  // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
  NSLog(@"textfield: %d", textField.tag);
  
  if (textField.tag == 1) {
    [self.thirdTextField becomeFirstResponder];
    [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:2] 
                          atScrollPosition:UITableViewScrollPositionTop animated:YES];
  }else {
    [textField resignFirstResponder];
  }
  
  
  return YES;
}

@end
