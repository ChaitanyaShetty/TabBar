//
//  ViewController2.h
//  TabBar
//
//  Created by chaitanya on 21/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;


@property (strong, nonatomic) IBOutlet UIButton *web;
@property (strong, nonatomic) IBOutlet UIButton *safari;
@property (strong, nonatomic) IBOutlet UIButton *video;
@property (strong, nonatomic) IBOutlet UIButton *back;



- (IBAction)WebViewButton:(id)sender;
- (IBAction)SafariButton:(id)sender;
- (IBAction)VideoButton:(id)sender;
- (IBAction)BackButton:(id)sender;

@end
