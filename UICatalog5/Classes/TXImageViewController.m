//
//  TXImageViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 5/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXImageViewController.h"

@interface TXImageViewController ()

@property (nonatomic, strong) UIImageView *imageView2;

@end

@implementation TXImageViewController
@synthesize imageView, imageView2;

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
  self.imageView.image = [UIImage imageNamed:@"scene1.jpg"];
  self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"scene2.jpg"]];
  
  self.imageView2.frame = CGRectMake(0, 200, 200, 200);
  [self.view addSubview:self.imageView2];
}

- (void)viewDidUnload
{
  [self setImageView:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
