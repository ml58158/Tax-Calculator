//
//  ViewController.m
//  Tax Calculator
//
//  Created by Matt Larkin on 3/4/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//Declare variables and properties
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property double caTax;
@property double chiTax;
@property double nyTax;
@property double tnTax;

@property (weak, nonatomic) IBOutlet UITextField *txtResult;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UITextField *totalBox;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];

//Set Tax Rates
    self.caTax  = .075;
    self.chiTax = .0925;
    self.nyTax  = .045;
    self.tnTax  = .095;



    // Do any additional setup after loading the view, typically from a nib.
}

//Button Logic
- (IBAction)onCalculateButtonTapped:(id)sender {


    NSString *enteredText = self.priceTextField.text;
    NSString *totalBox = self.totalBox.text;
    double enteredValue = enteredText.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enteredValue * self.caTax;
        double total = enteredValue + result;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
        self.totalBox.text = [NSString stringWithFormat:@"%.2f", total];
        }

        else if (self.segmentedControl.selectedSegmentIndex == 1){
            double result = enteredValue * self.chiTax;
            double total = enteredValue + result;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
            self.totalBox.text = [NSString stringWithFormat:@"%.2f", total];
        }

        else if (self.segmentedControl.selectedSegmentIndex == 2) {
            double result = enteredValue * self.nyTax;
            double total = enteredValue + result;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
            self.totalBox.text = [NSString stringWithFormat:@"%.2f", total];
        }

        else if (self.segmentedControl.selectedSegmentIndex == 3) {
            double result = enteredValue * self.tnTax;
            double total = enteredValue + result;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
            self.totalBox.text = [NSString stringWithFormat:@"%.2f", total];



        }



}

@end
