//
//  ViewController.m
//  CalWidgetFrameForSudoku
//
//  Created by 宋得中 on 15/10/1.
//  Copyright © 2015年 宋得中. All rights reserved.
//

#import "ViewController.h"
#import "CalWidgetFrameForSudoku.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 测试固定宽高
    CalWidgetFrameForSudoku* calculator = [[CalWidgetFrameForSudoku alloc] init];
    NSArray* arr = [calculator CreatWidgetsAndCalFrame:12 andTotalColumn:3 andTotalWidth:375 andEdgeMargin:8 andWidgetW:100 andWidgetH:100 andWidgetClass:[UIView class]];

    /*
    // 测试固定边距
    CalWidgetFrameForSudoku* calculator = [[CalWidgetFrameForSudoku alloc] init];
    NSArray* arr = [calculator CreatWidgetsAndCalFrame:12 andTotalColumn:4 andTotalWidth:375 andMargin:8 andEdgeMargin:12 andWidgetH:200 andWidgetClass:[UIView class]];
     */

    for (UIView* view in arr) {
        view.backgroundColor = [UIColor redColor];
        [self.view addSubview:view];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
