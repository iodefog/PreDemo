//
//  ViewController.m
//  PreDemo
//
//  Created by lhl on 15/5/26.
//  Copyright (c) 2015年 LHL. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushSecond:(id)sender{
    SecondViewController * testVC = [SecondViewController new];
    
    self.definesPresentationContext = YES; //self is presenting view controller
    testVC.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.5];
//    testVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:testVC];
    nav.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    nav.view.backgroundColor = [UIColor clearColor];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
