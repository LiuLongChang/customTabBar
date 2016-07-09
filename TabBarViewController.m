//
//  TabBarViewController.m
//  CustomTabBar
//
//  Created by 刘隆昌 on 14-12-23.
//  Copyright (c) 2014年 刘隆昌. All rights reserved.
//

#import "TabBarViewController.h"

#import "TabBarView.h"


#define SELECTED_VIEW_CONTROLLER_TAG 98456345


#import "FirstViewController.h"
#import "SecondViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor cyanColor];

    CGRect frame = [[UIScreen mainScreen] applicationFrame];

    CGFloat oriHeight = frame.size.height-40;
    
    CGFloat orginHeight = self.view.frame.size.height;
    if (iPhone5) {
        
        orginHeight = self.view.frame.size.height-60+addHeight;
        
    }
    
    _tabbar = [[TabBarView alloc] initWithFrame:CGRectMake(0,oriHeight,frame.size.width,60)];
    _tabbar.delegate = self;
    _tabbar.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_tabbar];
    
    
    
    _arrayViewControllers = [self getViewControllers];
    [self touchBtnAtIndex:0];
   


}



-(void)touchBtnAtIndex:(NSInteger)index{
    
    UIView * currentView = [self.view viewWithTag:SELECTED_VIEW_CONTROLLER_TAG];
    [currentView removeFromSuperview];
    
    
    NSDictionary * data = [_arrayViewControllers objectAtIndex:index];
    
    UIViewController * viewController = data[@"viewController"];
    viewController.view.tag = SELECTED_VIEW_CONTROLLER_TAG;
    viewController.view.frame = CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height-50);
    [self.view insertSubview:viewController.view belowSubview:_tabbar];
    
    
}



-(NSArray*)getViewControllers{
    
    NSArray * tabBarItem = nil;
    FirstViewController * first = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
    SecondViewController * second = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    
    
    tabBarItem = [NSArray arrayWithObjects:[NSDictionary  dictionaryWithObjectsAndKeys:@"tabicon_home",@"image",@"tabicon_home",@"image_locked",first,@"viewController",@"主页",@"title", nil],
    [NSDictionary dictionaryWithObjectsAndKeys:@"tabicon_home",@"image",@"tabicon_home",@"image_locked",second,@"viewController",@"主页",@"title", nil],nil];
    
    return tabBarItem;
    
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

@end
