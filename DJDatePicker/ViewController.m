//
//  ViewController.m
//  DJDatePicker
//
//  Created by DJ on 2017/8/24.
//  Copyright © 2017年 DennisDeng. All rights reserved.
//

#import "ViewController.h"
#import "DJDatePicker.h"
#import "NSDate+Category.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(15, 20, self.view.frame.size.width-30, 30)];
    label1.text = @"1. YearMonthDayHourMinute 年月日时分";
    UITextField *textField1 = [[UITextField alloc] initWithFrame:CGRectMake(15, 50, self.view.frame.size.width-30, 30)];
    textField1.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:label1];
    [self.view addSubview:textField1];
    
    DJDatePicker *datePicker1 = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_YearMonthDayHourMinute completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
        if (isDone)
        {
            textField1.text = [date stringByDefaultFormatter];
        }
    }];

    textField1.inputView = datePicker1;
    
    [textField1 becomeFirstResponder];

    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(15, 80, self.view.frame.size.width-30, 30)];
    label2.text = @"2. MonthDayHourMinute 月日时分";
    UITextField *textField2 = [[UITextField alloc] initWithFrame:CGRectMake(15, 110, self.view.frame.size.width-30, 30)];
    textField2.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:label2];
    [self.view addSubview:textField2];
    
    DJDatePicker *datePicker2 = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_MonthDayHourMinute completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
        if (isDone)
        {
            textField2.text = [date stringByDefaultFormatter];
        }
    }];
    
    textField2.inputView = datePicker2;

    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(15, 140, self.view.frame.size.width-30, 30)];
    label3.text = @"3. YearMonthDay 年月日";
    UITextField *textField3 = [[UITextField alloc] initWithFrame:CGRectMake(15, 170, self.view.frame.size.width-30, 30)];
    textField3.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:label3];
    [self.view addSubview:textField3];
    
    DJDatePicker *datePicker3 = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_YearMonthDay completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
        if (isDone)
        {
            textField3.text = [date stringByDefaultFormatter];
        }
    }];
    
    textField3.inputView = datePicker3;

    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(15, 200, self.view.frame.size.width-30, 30)];
    label4.text = @"4. MonthDay 月日";
    UITextField *textField4 = [[UITextField alloc] initWithFrame:CGRectMake(15, 230, self.view.frame.size.width-30, 30)];
    textField4.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:label4];
    [self.view addSubview:textField4];
    
    DJDatePicker *datePicker4 = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_MonthDay completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
        if (isDone)
        {
            textField4.text = [date stringByDefaultFormatter];
        }
    }];
    
    textField4.inputView = datePicker4;

    UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(15, 260, self.view.frame.size.width-30, 30)];
    label5.text = @"5. HourMinute 时分(24)";
    UITextField *textField5 = [[UITextField alloc] initWithFrame:CGRectMake(15, 290, self.view.frame.size.width-30, 30)];
    textField5.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:label5];
    [self.view addSubview:textField5];
    
    DJDatePicker *datePicker5 = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_HourMinute completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
        if (isDone)
        {
            textField5.text = [date stringByDefaultFormatter];
        }
    }];
    
    textField5.inputView = datePicker5;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
