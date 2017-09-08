DJDatePicker 
==============

DJDatePicker is a useful and powerful date picker for iphone**. <br/>

## Requirements

- iOS 4.0 or later
- Xcode 7.3 or later

## Usage

``` objective-c
DJDatePicker *datePicker = [[DJDatePicker alloc] initWithPickerStyle:PickerStyle_YearMonthDayHourMinute completeBlock:^(NSDate * _Nonnull date, BOOL isDone) {
if (isDone)
{
textField.text = [date stringByDefaultFormatter];
}
}];

textField.inputView = datePicker;
```

## Licenses

All source code is licensed under the [MIT License](https://github.com/iunion/DJKit/blob/master/LICENSE).


## Author
- [Dennis Deng](https://github.com/iunion)

