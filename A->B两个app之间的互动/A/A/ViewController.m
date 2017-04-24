//
//  ViewController.m
//  A
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

- (IBAction)gotoB:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"appB://fromAppA"];
    

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
