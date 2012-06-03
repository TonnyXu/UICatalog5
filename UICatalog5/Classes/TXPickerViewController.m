//
//  TXPickerViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXPickerViewController.h"

@interface TXPickerViewController ()

@end

@implementation TXPickerViewController
@synthesize datePicker;
@synthesize normalPicker;
@synthesize customPicker;
@synthesize pickerTypeSegment;
@synthesize myLabel;
@synthesize datePickerSegment;

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
  
  UISegmentedControl *segCon = (UISegmentedControl *)self.pickerTypeSegment.customView;
  segCon.selectedSegmentIndex = 1;
  
  self.normalPicker.hidden = YES;
  self.customPicker.hidden = YES;
  
  self.normalPicker.frame = self.datePicker.frame;
  self.customPicker.frame = self.datePicker.frame;

}

- (void)viewDidUnload
{
  [self setMyLabel:nil];
  [self setDatePickerSegment:nil];
  [self setDatePicker:nil];
  [self setNormalPicker:nil];
  [self setCustomPicker:nil];
  [self setPickerTypeSegment:nil];
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)datePickerSegmentValueChanged:(UISegmentedControl *)sender {
  UIDatePicker *dPicker = [[UIDatePicker alloc] initWithFrame:self.datePicker.frame];
  dPicker.date = [NSDate date];
  dPicker.datePickerMode = sender.selectedSegmentIndex;
  
  [self.datePicker removeFromSuperview];
  self.datePicker = dPicker;
  [self.view addSubview:self.datePicker];
  
}

- (IBAction)pickerTypeValueChanged:(UISegmentedControl *)sender {
  
  if (self.datePicker.superview) {
    [self.datePicker removeFromSuperview];
  }
  if (self.customPicker.superview) {
    [self.customPicker removeFromSuperview];
  }
  if (self.normalPicker.superview) {
    [self.normalPicker removeFromSuperview];
  }
  
  if (sender.selectedSegmentIndex == 1) {
    self.myLabel.hidden = NO;
    self.datePickerSegment.hidden = NO;
  }else {
    self.myLabel.hidden = YES;
    self.datePickerSegment.hidden = YES;
  }  
  
  if (sender.selectedSegmentIndex == 1) {
    [self.view addSubview:self.datePicker];
  }else if (sender.selectedSegmentIndex == 0) {
    self.normalPicker.hidden = NO;
    [self.view addSubview:self.normalPicker];
  }else {
    self.customPicker.hidden = NO;
    [self.view addSubview:self.customPicker];
  }
  
}


#pragma mark - UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
  if (pickerView.tag == 0) {
    return 2;
  }else {
    return 1;
  }
  
  return 0;
}

- (NSInteger)      pickerView:(UIPickerView *)pickerView 
      numberOfRowsInComponent:(NSInteger)component
{
  
  if (pickerView.tag == 0) {
    return 3;
  }else {
    return 5;
  }
  return 0;
}


#pragma mark UIPickerViewDelegate

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
  if (pickerView.tag == 0) {
    return 150.f;
  }else {
    return 200.f;
  }
  return 0.f;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
  if (pickerView.tag == 0) {
    return 44;
  }else {
    return 60;
  }
  
  return 0.f;
  
}

//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//  if (pickerView.tag == 0) {
//    return @"LangReng";
//  }else {
//    return @"q_p";
//  }
//  return @"Tonny";
//  
//}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
  return nil;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
  NSLog(@"You selected picker[%d] row:%d in component: %d", pickerView.tag, row, component);
  
  if (pickerView.tag == 0) {
    if (row == 1 && component == 0) {
      [pickerView selectRow:2 inComponent:1 animated:YES];
    }
  }
  
}
- (IBAction)datePickerValueChanged:(UIDatePicker *)sender {
  NSLog(@"You selected: %@", [sender.date descriptionWithLocale:[NSLocale currentLocale]]);
  
}
@end
