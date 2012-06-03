//
//  TXTextFieldViewController.h
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXTextFieldViewController : UITableViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstTextField;
@property (strong, nonatomic) IBOutlet UITextField *secondTextField;
@property (strong, nonatomic) IBOutlet UITextField *thirdTextField;
@property (strong, nonatomic) IBOutlet UITextField *forthTextField;

@end
