//
//  TabBarViewController.h
//  CustomTabBar
//
//  Created by 刘隆昌 on 14-12-23.
//  Copyright (c) 2014年 刘隆昌. All rights reserved.
//

#import <UIKit/UIKit.h>




#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : 0)
#define addHeight 88



@protocol tabBarDelegate <NSObject>


-(void)touchBtnAtIndex:(NSInteger)index;


@end



@class TabBarView;


@interface TabBarViewController : UIViewController<tabBarDelegate>



@property(nonatomic,strong)TabBarView* tabbar;

@property(nonatomic,strong)NSArray* arrayViewControllers;




@end
