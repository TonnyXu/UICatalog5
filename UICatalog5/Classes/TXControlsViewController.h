//
//  TXControlsViewController.h
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXControlsViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UISwitch *mySwitch;
- (IBAction)switchValueChanged:(id)sender;


@property (strong, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)mySliderValueChanged:(id)sender;

@property (strong, nonatomic) IBOutlet UISlider *customSlider;
- (IBAction)customSliderValueChanged:(UISlider *)sender;

@property (strong, nonatomic) IBOutlet UIPageControl *myPageControl;
- (IBAction)myPageControlValueChanged:(UIPageControl *)sender;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *myIndicator;

@property (strong, nonatomic) IBOutlet UIProgressView *myProgress;

@property (strong, nonatomic) IBOutlet UIStepper *myStepper;
- (IBAction)myStepperValueChanged:(UIStepper *)sender;


- (IBAction)tintedAction:(UIBarButtonItem *)sender;

@end
