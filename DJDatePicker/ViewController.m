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
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width-40, 50)];
    [self.view addSubview:textField];
    
    DJDatePicker *datePicker = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_YearMonthDayHourMinute completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
        if (isDone)
        {
            textField.text = [date stringByDefaultFormatter];
        }
    }];

    textField.inputView = datePicker;
    
    [textField becomeFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
