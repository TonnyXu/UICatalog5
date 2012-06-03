//
//  TXTextViewViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXTextViewViewController.h"

@interface TXTextViewViewController ()

- (void)closeKeyBoard:(id)sender;

@end

@implementation TXTextViewViewController
@synthesize myTextView;
@synthesize myText;

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
  self.myText = [[NSUserDefaults standardUserDefaults] stringForKey:@"myTextKey"];
  
  self.myTextView.text = self.myText;
}

- (void)viewDidUnload
{
  [self setMyTextView:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - UITextViewDelegate
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
  NSLog(@"edit begin!");
  
  UIBarButtonItem *doneItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closeKeyBoard:)];
  self.navigationItem.rightBarButtonItem = doneItem;
  
  return YES;
}

- (void)textViewDidEndEditing:(UITextView *)textView{
  NSLog(@"edit end!");
  
  [[NSUserDefaults standardUserDefaults] setObject:textView.text forKey:@"myTextKey"];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)closeKeyBoard:(id)sender{
  [self.myTextView resignFirstResponder];
  self.navigationItem.rightBarButtonItem = nil;
}

@end
