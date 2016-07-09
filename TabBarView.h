//
//  TabBarView.h
//  CustomTabBar
//
//  Created by 刘隆昌 on 14-12-23.
//  Copyright (c) 2014年 刘隆昌. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TabBarViewController.h"



@interface TabBarView : UIView


@property(nonatomic,strong)UIImageView * tabBarView;
@property(nonatomic,strong)UIImageView * tabBarViewCenter;
@property(nonatomic,strong)UIButton* btn1;
@property(nonatomic,strong)UIButton* btn2;
@property(nonatomic,strong)UIButton*btn3;
@property(nonatomic,strong)UIButton*btn4;
@property(nonatomic,strong)UIButton*btn_center;



@property(nonatomic,weak)id<tabBarDelegate>delegate;



@end
