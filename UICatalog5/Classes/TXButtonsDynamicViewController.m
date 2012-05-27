//
//  TXButtonsDynamicViewController.m
//  UICatalog5
//
//  Created by Tonny Xu on 5/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TXButtonsDynamicViewController.h"

@interface TXButtonsDynamicViewController ()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation TXButtonsDynamicViewController

@synthesize dataArray;

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

  self.dataArray = [NSMutableArray array];

  NSDictionary *itemDict1 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeCustom], @"type", 
                            @"Grey", @"text",
                            @"whiteButton", @"backgroundImage",
                            @"blueButton", @"backgroundImageHighlighted",
                            nil];
  
  NSDictionary *cell1Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Background Image", @"title", 
                             itemDict1, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray1 = [NSArray arrayWithObjects:
                          cell1Dict, @"ButtonsViewController.m\n(UIButton *)grayButton", nil];
  
  NSDictionary *sectionDict1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButton", @"sectionTitle", 
                                cellsArray1, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict1];
  
  //---------------------------------------------------------------------------
  NSDictionary *itemDict2 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeCustom], @"type", 
                             @"UIButton_custom", @"image",
                            @"whiteButton", @"backgroundImage",
                            @"blueButton", @"backgroundImageHighlighted",
                            nil];
  
  NSDictionary *cell2Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Button with Image", @"title", 
                             itemDict2, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray2 = [NSArray arrayWithObjects:
                          cell2Dict, @"ButtonsViewController.m\n(UIButton *)imageButton", nil];
  
  NSDictionary *sectionDict2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButton", @"sectionTitle", 
                                cellsArray2, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict2];
  
  //---------------------------------------------------------------------------
  NSDictionary *itemDict3 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeRoundedRect], @"type", 
                            @"Rounded", @"text",
                            nil];
  
  NSDictionary *cell3Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Rounded", @"title", 
                             itemDict3, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray3 = [NSArray arrayWithObjects:
                          cell3Dict, @"ButtonsViewController.m\n(UIButton *)roundedButton", nil];
  
  NSDictionary *sectionDict3 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButtonTypeRoundedRect", @"sectionTitle", 
                                cellsArray3, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict3];
  
  //---------------------------------------------------------------------------
  NSDictionary *itemDict4 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeDetailDisclosure], @"type", 
                            nil];
  
  NSDictionary *cell4Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Background Image", @"title", 
                             itemDict4, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray4 = [NSArray arrayWithObjects:
                          cell4Dict, @"ButtonsViewController.m\n(UIButton *)roundedButton", nil];
  
  NSDictionary *sectionDict4 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButtonTypeDetailDisclosure", @"sectionTitle", 
                                cellsArray4, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict4];
  
  //---------------------------------------------------------------------------
  NSDictionary *itemDict5 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeInfoLight], @"type", 
                            nil];
  
  NSDictionary *cell5Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Background Image", @"title", 
                             itemDict5, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray5 = [NSArray arrayWithObjects:
                          cell5Dict, @"ButtonsViewController.m\n(UIButton *)infoLightButton", nil];
  
  NSDictionary *sectionDict5 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButtonTypeInfoLight", @"sectionTitle", 
                                cellsArray5, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict5];
  
  //---------------------------------------------------------------------------
  NSDictionary *itemDict6 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeInfoDark], @"type", 
                            nil];
  
  NSDictionary *cell6Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Background Image", @"title", 
                             itemDict6, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray6 = [NSArray arrayWithObjects:
                          cell6Dict, @"ButtonsViewController.m\n(UIButton *)infoDarkButton", nil];
  
  NSDictionary *sectionDict6 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButtonTypeInfoDark", @"sectionTitle", 
                                cellsArray6, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict6];
  
  //---------------------------------------------------------------------------
  NSDictionary *itemDict7 = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"UIButton", @"name", 
                            [NSNumber numberWithInt:UIButtonTypeContactAdd], @"type", 
                            nil];
  
  NSDictionary *cell7Dict = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"Background Image", @"title", 
                             itemDict7, @"buttonSettings",
                             nil];
  
  NSArray *cellsArray7 = [NSArray arrayWithObjects:
                          cell7Dict, @"ButtonsViewController.m\n(UIButton *)contactAddButton", nil];
  
  NSDictionary *sectionDict7 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"UIButtonTypeContactAdd", @"sectionTitle", 
                                cellsArray7, @"cells", 
                                nil];
  [self.dataArray addObject:sectionDict7];
  
  //---------------------------------------------------------------------------

  self.tableView.rowHeight = 54;
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  // Release any retained subviews of the main view.
  // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  return [self.dataArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  NSDictionary *cellsDict = [self.dataArray objectAtIndex:section];
  NSArray *cellsArray = [cellsDict objectForKey:@"cells"];
  return [cellsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"ButtonsCell";
  static NSString *DetailCellIdentifier = @"ButtonsDetailCell";

  // Configure the cell...
  NSDictionary *sectionDict = [self.dataArray objectAtIndex:indexPath.section];
  NSArray *cellArray = [sectionDict objectForKey:@"cells"];
  id cellDataObj = [cellArray objectAtIndex:indexPath.row];

  UITableViewCell *cell = nil;
  if ([cellDataObj isKindOfClass:[NSDictionary class]]) {
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (nil == cell) {
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
  }else {
    [tableView dequeueReusableCellWithIdentifier:DetailCellIdentifier];
    if (nil == cell) {
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:DetailCellIdentifier];
    }
  }
  
  
  
  
  if ([cellDataObj isKindOfClass:[NSDictionary class]]) {
    NSDictionary *cellDict = (NSDictionary *)cellDataObj;
    cell.textLabel.text = [cellDict objectForKey:@"title"];
    
    NSDictionary *buttonDict = [cellDict objectForKey:@"buttonSettings"];
    
    UIButton *button = [UIButton buttonWithType:[[buttonDict objectForKey:@"type"] intValue]];
    if ([[buttonDict objectForKey:@"type"] intValue] == UIButtonTypeCustom ||
        [[buttonDict objectForKey:@"type"] intValue] == UIButtonTypeRoundedRect) {
      button.frame = CGRectMake(10, 10, 100, 46);
    }
    
    if (nil != [buttonDict objectForKey:@"backgroundImage"]) {
      UIImage *whiteButton = [UIImage imageNamed:[buttonDict objectForKey:@"backgroundImage"]];
      UIImage *whiteButtonStretched = [whiteButton stretchableImageWithLeftCapWidth:12 
                                                                       topCapHeight:0];
      [button setBackgroundImage:whiteButtonStretched 
                        forState:UIControlStateNormal];
    }
    if (nil != [buttonDict objectForKey:@"backgroundImageHighlighted"]) {
      UIImage *blueButton = [UIImage imageNamed:[buttonDict objectForKey:@"backgroundImageHighlighted"]];
      UIImage *blueButtonStretched = [blueButton stretchableImageWithLeftCapWidth:12 
                                                                     topCapHeight:0];
      [button setBackgroundImage:blueButtonStretched 
                        forState:UIControlStateHighlighted];
    }
    if (nil != [buttonDict objectForKey:@"image"]) {
      [button setImage:[UIImage imageNamed:[buttonDict objectForKey:@"image"]] 
              forState:UIControlStateNormal];
    }
    if (nil != [buttonDict objectForKey:@"text"]) {
      [button setTitle:[buttonDict objectForKey:@"text"] 
              forState:UIControlStateNormal];
      [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    }
    button.tag = indexPath.section;
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    cell.accessoryView = button;
  }else {
    
    UILabel *descriptionLabel = (UILabel *)[cell viewWithTag:'desc'];
    if (nil == descriptionLabel) {
      descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 54)];
      descriptionLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
      descriptionLabel.backgroundColor = [UIColor clearColor];
      descriptionLabel.textAlignment = UITextAlignmentCenter;
      descriptionLabel.font = [UIFont systemFontOfSize:12.0];
      descriptionLabel.textColor = [UIColor grayColor];
      descriptionLabel.tag = 'desc';
      descriptionLabel.numberOfLines = 2;
      
      [cell.contentView addSubview:descriptionLabel];
    }

    descriptionLabel.text = cellDataObj;
    
    
  }
  
  return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
  NSDictionary *sectionDict = [self.dataArray objectAtIndex:section];

  return [sectionDict objectForKey:@"sectionTitle"];
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  // Navigation logic may go here. Create and push another view controller.
  /*
   <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
   // ...
   // Pass the selected object to the new view controller.
   [self.navigationController pushViewController:detailViewController animated:YES];
   */
}


- (void)buttonAction:(id)sender{
  UIButton *button = (UIButton *)sender;
  NSLog(@"You tapped: %d", button.tag);
}

@end
