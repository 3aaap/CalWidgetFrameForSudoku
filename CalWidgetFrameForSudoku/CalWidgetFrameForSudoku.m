//
//  CalWidgetFrameForSudoku.m
//  CalWidgetFrameForSudoku
//
//  Created by 宋得中 on 15/10/1.
//  Copyright © 2015年 宋得中. All rights reserved.
//

#import "CalWidgetFrameForSudoku.h"

@implementation CalWidgetFrameForSudoku

/**
 *  固定与屏幕边缘的距离\控件之间的边距,求控件的frame
 *
 *  @param totalWidgetNum 参与九宫格排序的控件的总个数
 *  @param totalColumn    九宫格的列数(即一行有几个控件)
 *  @param totalWidth     九宫格的总宽度(包括边距)
 *  @param margin         控件之间的距离
 *  @param edgeMargin     控件与屏幕边缘的距离
 *  @param widgetH        控件的高度(如果传入值为0,即表示控件的高度与宽度相同)
 *  @param widgetClass    控件的class类型
 *
 *  @return 返回已设置完frame的控件数组
 */
- (NSArray*)CreatWidgetsAndCalFrame:(NSInteger)totalWidgetNum andTotalColumn:(NSInteger)totalColumn andTotalWidth:(CGFloat)totalWidth andMargin:(CGFloat)margin andEdgeMargin:(CGFloat)edgeMargin andWidgetH:(CGFloat)widgetH andWidgetClass:(Class)widgetClass
{
    //创建可变数组用于存放需要添加的控件
    NSMutableArray* widgetsArr = [NSMutableArray arrayWithCapacity:totalColumn];
    //定义frame的其余三个属性
    CGFloat widgetX = 0;
    CGFloat widgetY = 0;
    CGFloat widgetW = 0;
    /**
     *  循环创建控件并计算每个控件的frame
     */
    for (int i = 0; i < totalWidgetNum; i++) {
        //根据传入的class类型创建对象
        UIView* widget = [[widgetClass alloc] init];

        //根据索引值计算控件的frame
        widgetW = (totalWidth - edgeMargin * 2 - margin * (totalColumn - 1)) / totalColumn;
        widgetH = widgetH ? widgetH : widgetW;
        widgetX = i % totalColumn * (margin + widgetW) + edgeMargin;
        widgetY = i / totalColumn * (margin + widgetH) + edgeMargin;
        widget.frame = CGRectMake(widgetX, widgetY, widgetW, widgetH);
        //将控件添加到控件数组中
        [widgetsArr addObject:widget];
    }
    return widgetsArr.copy;
}

/**
 *  固定子控件的宽高,创建并设置控件的frame
 *
 *  @param totalWidgetNum 参与九宫格排序的控件的总个数
 *  @param totalColumn    九宫格的列数(即一行有几个控件)
 *  @param totalWidth     九宫格的总宽度(包括边距)
 *  @param edgeMargin     控件与屏幕边缘的距离
 *  @param widgetW        控件的宽度
 *  @param widgetH        控件的高度
 *  @param widgetClass    控件的class的类型
 *
 *  @return 返回已设置完frame的控件数组
 */
- (NSArray*)CreatWidgetsAndCalFrame:(NSInteger)totalWidgetNum andTotalColumn:(NSInteger)totalColumn andTotalWidth:(CGFloat)totalWidth andEdgeMargin:(CGFloat)edgeMargin andWidgetW:(CGFloat)widgetW andWidgetH:(CGFloat)widgetH andWidgetClass:(Class)widgetClass
{
    //创建可变数组用于存放需要添加的控件
    NSMutableArray* widgetsArr = [NSMutableArray arrayWithCapacity:totalColumn];
    //定义frame的其余三个属性
    CGFloat widgetX = 0;
    CGFloat widgetY = 0;
    CGFloat margin = 0;
    if (edgeMargin) {
        margin = (totalWidth - edgeMargin * 2 - widgetW * totalColumn) / (totalColumn - 1);
    }
    else {
        margin = (totalWidth - widgetW * totalColumn) / (totalColumn + 1);
        edgeMargin = margin;
    }

    /**
     *  循环创建控件并计算每个控件的frame
     */
    for (int i = 0; i < totalWidgetNum; i++) {
        //根据传入的class类型创建对象
        UIView* widget = [[widgetClass alloc] init];

        //根据索引值计算控件的frame
        widgetX = i % totalColumn * (margin + widgetW) + edgeMargin;
        widgetY = i / totalColumn * (margin + widgetH) + edgeMargin;
        widgetH = widgetH ? widgetH : widgetW;
        widget.frame = CGRectMake(widgetX, widgetY, widgetW, widgetH);
        NSLog(@"%@", NSStringFromCGRect(widget.frame));
        //将控件添加到控件数组中
        [widgetsArr addObject:widget];
    }

    return widgetsArr.copy;
}

@end
