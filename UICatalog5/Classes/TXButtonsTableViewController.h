//
//  TXButtonsTableViewController.h
//  UICatalog5
//
//  Created by Tonny Xu on 5/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXButtonsTableViewController : UITableViewController


@property (strong, nonatomic) IBOutlet UIButton *firstButton;
@property (strong, nonatomic) IBOutlet UIButton *secondButton;


- (IBAction)doAction1:(id)sender;
- (IBAction)doAction2:(id)sender;

- (IBAction)dontLeaveMe:(id)sender;
- (IBAction)dontLeaveMe2:(id)sender;
@end
