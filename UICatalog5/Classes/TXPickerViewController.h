//
//  TXPickerViewController.h
//  UICatalog5
//
//  Created by Tonny Xu on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXPickerViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *datePickerSegment;
- (IBAction)datePickerSegmentValueChanged:(UISegmentedControl *)sender;

- (IBAction)pickerTypeValueChanged:(UISegmentedControl *)sender;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIPickerView *normalPicker;
@property (strong, nonatomic) IBOutlet UIPickerView *customPicker;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *pickerTypeSegment;
- (IBAction)datePickerValueChanged:(UIDatePicker *)sender;
@end
