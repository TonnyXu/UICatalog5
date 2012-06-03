//
//  TXToolBarViewController.h
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXToolBarViewController : UIViewController

- (IBAction)segmentValueChanged:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UIToolbar *myToolbar;

@end
