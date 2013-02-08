//
//  ViewController.m
//  WTCheckboxDemo
//
//  Created by Duncan Champney on 2/8/13.
//  Copyright (c) 2013 Duncan Champney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  _theCheckbox.notSelectedImage = [UIImage imageNamed: @"Checkbox.png"];
  _theCheckbox.selectedImage = [UIImage imageNamed: @"Checkbox-selected.png"];
  self.theCheckbox.selected = NO;
  [self setupCheckBoxStatusMessage];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setupCheckBoxStatusMessage;
{
  NSString *statusMessage;

  if (self.theCheckbox.selected)
    statusMessage = NSLocalizedString( @"Checkbox is selected", @"Checkbox selected message");
  else
    statusMessage = NSLocalizedString( @"Checkbox is not selected", @"Checkbox not selected message");
  self.checkboxStatusLabel.text = statusMessage;
}

- (IBAction)userToggledCheckbox:(WTToggleButton *)sender
{
  NSLog(@"Checkbox status changed. New state = %d", sender.selected);
  [self setupCheckBoxStatusMessage];
}
@end