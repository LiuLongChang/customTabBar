//
//  TabBarView.m
//  CustomTabBar
//
//  Created by 刘隆昌 on 14-12-23.
//  Copyright (c) 2014年 刘隆昌. All rights reserved.
//

#import "TabBarView.h"




@implementation TabBarView



-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:frame];
        [self layoutView];
        
    }
    return self;
}


-(void)layoutView{
    
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    _tabBarView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tabbar_0"]];
    [_tabBarView setFrame:CGRectMake(0,
                                     9,frame.size.width,51)];
    [_tabBarView setUserInteractionEnabled:YES];
    
    
    
    _tabBarViewCenter = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tabbar_mainbtn_bg"]];
    _tabBarViewCenter.center = CGPointMake(self.center.x, self.bounds.size.height/2.0);
    [_tabBarViewCenter setUserInteractionEnabled:YES];
    
    
    NSLog(@" ==  %@",NSStringFromCGRect(_tabBarViewCenter.frame));
    
    
    _btn_center = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn_center.adjustsImageWhenHighlighted = YES;
    [_btn_center setBackgroundImage:[UIImage imageNamed:@"tabbar_mainbtn"] forState:UIControlStateNormal];
    _btn_center.frame = CGRectMake(0,0,46,46);
    _btn_center.center = CGPointMake(_tabBarViewCenter.bounds.size.width/2.0,_tabBarViewCenter.bounds.size.height/2.0+5);
    _btn_center.tag = 103;
    [_btn_center addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [_tabBarViewCenter addSubview:_btn_center];
    
    
    
    
    
    [self addSubview:_tabBarView];
    [self addSubview:_tabBarViewCenter];
    
    
    
    [self layoutBtn];
    
}


-(void)layoutBtn{
    
    CGRect frame =
    [[UIScreen mainScreen] applicationFrame];
    
    float AWidth =
    frame.size.width/5;
    
    
    _btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_btn1 setFrame:CGRectMake(0,0,AWidth,60)];
    _btn1.tag = 101;
    [_btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn2.frame = CGRectMake(AWidth,0,AWidth,60);
    _btn2.tag = 102;
    [_btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    _btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn3.frame = CGRectMake(2*AWidth+AWidth,0,AWidth,60);
    _btn3.tag = 104;
    [_btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    _btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn4.frame = CGRectMake(AWidth*4,0,AWidth,60);
    _btn4.tag = 105;
    [_btn4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    

    [_tabBarView addSubview:_btn1];
    [_tabBarView addSubview:_btn2];
    [_tabBarView addSubview:_btn3];
    [_tabBarView addSubview:_btn4];
    
    
}



-(void)btnClick:(UIButton*)btn{
    
    switch (btn.tag-100) {
        case 1:
            
            
            [_tabBarView setImage:[UIImage imageNamed:@"tabbar_0"]];
            [self.delegate touchBtnAtIndex:0];
            
            break;
        
            
        case 2:
            
            [_tabBarView setImage:[UIImage imageNamed:@"tabbar_1"]];
            [self.delegate touchBtnAtIndex:1];
            
            
            break;
            
        case 3:
            
           
         //   [self.delegate touchBtnAtIndex:1];
            NSLog(@"123456");
            
            break;

            
        case 4:
            
            
            [_tabBarView setImage:[UIImage imageNamed:@"tabbar_3"]];
            
            
            break;

            
        case 5:
            
            
            [_tabBarView setImage:[UIImage imageNamed:@"tabbar_4"]];
            
            
            break;

            
        default:
            break;
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
