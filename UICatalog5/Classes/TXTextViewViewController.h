//
//  TXTextViewViewController.h
//  UICatalog5
//
//  Created by Tonny Xu on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXTextViewViewController : UIViewController<UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *myTextView;

@property (strong, nonatomic) NSString *myText;


@end
