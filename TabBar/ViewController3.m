//
//  ViewController3.m
//  TabBar
//
//  Created by chaitanya on 21/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController3.h"
#define KCountryComponent 0
#define KPlayerComponent 1

@interface ViewController3 ()
@property (strong, nonatomic)NSDictionary *countryies;
@property (strong, nonatomic)NSArray *sortedPlayer;
@property (strong, nonatomic)NSArray *playerNames;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSURL *plistURL = [bundle URLForResource:@"Property List" withExtension:@"plist"];
    self.countryies = [NSDictionary dictionaryWithContentsOfURL:plistURL];
    NSArray *allcountry = [self.countryies allKeys];
    NSArray *sortedCountryies = [allcountry sortedArrayUsingSelector:@selector(compare:)];
    self.sortedPlayer = sortedCountryies;
    NSString *selectedStates = self.sortedPlayer[0];
    self.playerNames = self.countryies[selectedStates];
    
    self.countryies = [NSDictionary dictionaryWithContentsOfURL:plistURL];
    
    
    
    
    
    
    
    
//    NSString *path = [[NSBundle mainBundle]pathForResource:@"Property List" ofType:@"plist"];
//    NSDictionary* dict = [[NSDictionary alloc]initWithContentsOfFile:path];
//    self.myarray  = [dict objectForKey:@"states"];
//    self.myarray2 = [dict objectForKey:@"capitals"];
//    [_pickerView reloadAllComponents];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if (component == KCountryComponent) {
        return [self.sortedPlayer count];
    } else {
        return [self.playerNames count];
    }
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == KCountryComponent) {
        return self.sortedPlayer[row];
    } else {
        return self.playerNames[row];
    }
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    if (component == KCountryComponent) {
        NSString *selectedState = self.sortedPlayer[row];
        self.playerNames = self.countryies[selectedState];
        [self.pickerView reloadComponent:KPlayerComponent];
        [self.pickerView selectRow:0 inComponent:KPlayerComponent animated:YES];
    }
    
    NSInteger countryRow = [self.pickerView
                            selectedRowInComponent:KCountryComponent];
    NSInteger playerRow = [self.pickerView
                           selectedRowInComponent:KPlayerComponent];
    NSString *country = self.sortedPlayer[countryRow];
    NSString *player = self.playerNames[playerRow];
    
    NSString *imageName = [NSString stringWithFormat:@"%@%@.png",country,player];
    NSLog(@"Image Name : %@",imageName);
    
    self.images.image = [UIImage imageNamed:imageName];
    
    self.countryImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png",country]];
    
}

@end
