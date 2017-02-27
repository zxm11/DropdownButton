//
//  DropdownBtn.m
//  DropdownBtn
//
//  Created by zxm  on 2017/2/27.
//  Copyright © 2017年 zxm. All rights reserved.
//

#import "DropdownBtn.h"

@implementation DropdownBtn


- (instancetype)init{
    self = [super init];
    if (self){
        [self createDropdownBtnUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        [self createDropdownBtnUI];
    }
    return self;
}

- (void)createDropdownBtnUI{
    _changedBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height * 0.5)];
    _changedBtn.backgroundColor = [UIColor blueColor];
//    [_changedBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_changedBtn setTitle:@"下班打卡" forState:UIControlStateNormal];
    [self addSubview:_changedBtn];
    
    _connerBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.bounds.size.width-15, (self.bounds.size.height * 0.5)-15, 15, 15)];
    [_connerBtn setImage:[UIImage imageNamed:@"ȦȦ"] forState:UIControlStateNormal];
    [self addSubview:_connerBtn];
    [_connerBtn addTarget:self action:@selector(dropdown) forControlEvents:UIControlEventTouchUpInside];
    
    _hiddenBtn = [[UIButton alloc] initWithFrame:CGRectMake(0,self.bounds.size.height * 0.5 , self.bounds.size.width, self.bounds.size.height * 0.5)];
    _hiddenBtn.backgroundColor = [UIColor blackColor];
    _hiddenBtn.alpha = 0.3;
//    [_hiddenBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_hiddenBtn setTitle:@"跨天打卡" forState:UIControlStateNormal];
    [_hiddenBtn addTarget:self action:@selector(hiddenBtnClick) forControlEvents:UIControlEventTouchUpInside];
    _hiddenBtn.hidden = YES;
    [self addSubview:_hiddenBtn];
}

- (void)dropdown{
    
    _hiddenBtn.hidden = _isShow;
    _isShow = !_isShow;
}

- (void)hiddenBtnClick{
    
    _hiddenBtn.hidden = YES;
    _isShow = false;
    if ([_changedBtn.titleLabel.text isEqualToString:@"下班打卡"]){
        [_changedBtn setTitle:@"跨天打卡" forState:UIControlStateNormal];
        [_hiddenBtn setTitle:@"下班打卡" forState:UIControlStateNormal];
    }else{
        [_changedBtn setTitle:@"下班打卡" forState:UIControlStateNormal];
        [_hiddenBtn setTitle:@"跨天打卡" forState:UIControlStateNormal];
    }
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
