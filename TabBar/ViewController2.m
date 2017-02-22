//
//  ViewController2.m
//  TabBar
//
//  Created by chaitanya on 21/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets = false;
    
   // [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com"]]];

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

- (IBAction)WebViewButton:(id)sender {
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com"]]];
}

- (IBAction)SafariButton:(id)sender {
 [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.apple.com"]];
}

- (IBAction)VideoButton:(id)sender {
    NSURL *videopath = [[NSBundle mainBundle]URLForResource:@"video2" withExtension:@"mp4"];
    NSURLRequest *req = [NSURLRequest requestWithURL:videopath];
    [self.myWebView loadRequest:req];
}

- (IBAction)BackButton:(id)sender {
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    self.web.hidden = YES;
    self.safari.hidden = YES;
    self.video.hidden = YES;
    self.back.hidden = NO;
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    self.back.hidden = YES;
    
}
//-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
//{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error msg" message:@"website not Found" preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
//    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
//    [alert addAction:cancel];
//    [alert addAction:ok];
//    [self presentViewController:alert animated:YES completion:nil];
//    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
//}


@end
