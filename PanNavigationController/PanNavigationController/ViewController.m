//
//  ViewController.m
//  PanNavigationController
//
//  Created by Adward on 15/6/12.
//  Copyright (c) 2015年 Adward. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *goNextButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [goNextButton setTitle:@"goNext" forState:UIControlStateNormal];
    [goNextButton setFrame:CGRectMake(100, 100, 150, 50)];
    [goNextButton addTarget:self action:@selector(goSecondView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:goNextButton];
}

-(void)goSecondView{
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
