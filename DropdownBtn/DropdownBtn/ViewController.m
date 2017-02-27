//
//  ViewController.m
//  DropdownBtn
//
//  Created by zxm  on 2017/2/27.
//  Copyright © 2017年 zxm. All rights reserved.
//

#import "ViewController.h"
#import "DropdownBtn.h"

@interface ViewController ()

@property(nonatomic,strong)DropdownBtn * dropdownBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor brownColor];
    _dropdownBtn = [[DropdownBtn alloc] initWithFrame:CGRectMake(100, 200, 100, 60)];
    [self.view addSubview:_dropdownBtn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
