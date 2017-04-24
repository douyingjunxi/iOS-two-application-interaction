//
//  ViewController.m
//  B
//
//  Created by 民民 on 2017/4/24.
//  Copyright © 2017年 com.ptj. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)gotoA:(UIButton *)sender {
    NSString *sourceStr = ((AppDelegate *)[UIApplication sharedApplication].delegate).sourceAppStr;//@"appB://fromAppA"
    NSArray *arr = [sourceStr componentsSeparatedByString:@"from"];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@://fromAppB",arr[1]];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        
    }else{
        NSLog(@"can't");
    }
    
}
- (IBAction)successBtn:(UIButton *)sender {
    NSString *sourceStr = ((AppDelegate *)[UIApplication sharedApplication].delegate).sourceAppStr;//@"appB://fromAppA"
    NSArray *arr = [sourceStr componentsSeparatedByString:@"from"];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@://fromAppBsuccess",arr[1]];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        
    }else{
        NSLog(@"can't");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
