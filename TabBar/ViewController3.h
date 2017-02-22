//
//  ViewController3.h
//  TabBar
//
//  Created by chaitanya on 21/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController3 : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) IBOutlet UIImageView *countryImage;
@property (strong, nonatomic) IBOutlet UIImageView *images;




@property (strong, nonatomic)NSArray *myarray;
@property (strong, nonatomic)NSArray *myarray2;


@end
