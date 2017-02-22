//
//  ViewController.m
//  TabBar
//
//  Created by chaitanya on 21/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *tf1;
@property (strong, nonatomic) IBOutlet UIDatePicker *myDatePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  //  _tf1.delegate = self;
//    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
//    [datePicker setDate:[NSDate date]];
//    
//    [datePicker addTarget:self action:@selector(dateTextField:) forControlEvents:UIControlEventValueChanged];
//    [_tf1 setInputView:datePicker];
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dissmissDate:)];
//    tap.numberOfTapsRequired = 1;
//    [self.view addGestureRecognizer:tap];
//
   //Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)dateTextField:(id)sender
//{
//    UIDatePicker *picker = (UIDatePicker*)self.tf1.inputView;
//    [picker setMaximumDate:[NSDate date]];
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
//    NSDate *eventDate = picker.date;
//    [dateFormat setDateFormat:@"dd:MM:yyyy HH:mm:ss "];
//    NSString *dateString = [dateFormat stringFromDate:eventDate];
//    _tf1.text = [NSString stringWithFormat:@"%@", dateString];
//    
//    
//}

-(IBAction)dissmissDate :(UIGestureRecognizer *)gestureRecognizer
{
    _myDatePicker.hidden = YES;
}

- (IBAction)myButton:(id)sender {
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc]init];
    [outputFormatter setDateFormat:@"dd:MM:YYYY HH:mm"]
    ;
    NSString *dateString = [outputFormatter stringFromDate:self.myDatePicker.date];
    _tf1.text = dateString;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    _myDatePicker.hidden = false;
    return false;
}

@end
