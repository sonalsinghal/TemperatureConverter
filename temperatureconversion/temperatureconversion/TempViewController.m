//
//  TempViewController.m
//  temperatureconversion
//
//  Created by Sonal Jain on 1/16/14.
//  Copyright (c) 2014 Sonal Singhal. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()
@property (weak, nonatomic) IBOutlet UITextField *celciusTextField;
@property (weak, nonatomic) IBOutlet UITextField *farenheitTextField;

- (IBAction)onTap:(id)sender;

- (IBAction)celciusToFarenheit:(id)sender;
- (IBAction)farenheitToCelcius:(id)sender;
- (IBAction)resetTextFieldValues:(id)sender;



@end

@implementation TempViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    
    
}

- (IBAction)celciusToFarenheit:(id)sender {
    float celciusValue = [self.celciusTextField.text floatValue];
    float farenheitValue = celciusValue * 1.8 + 32;
    self.farenheitTextField.text = [NSString stringWithFormat:@"%0.1f", farenheitValue];
}

- (IBAction)farenheitToCelcius:(id)sender {
    float farenheitValue = [self.farenheitTextField.text floatValue];
    float celciusValue = (farenheitValue - 32)/1.8;
    self.celciusTextField.text = [NSString stringWithFormat:@"%0.1f", celciusValue];
}

- (IBAction)resetTextFieldValues:(id)sender {
    self.celciusTextField.text = @"";
    self.farenheitTextField.text = @"";
}



@end
