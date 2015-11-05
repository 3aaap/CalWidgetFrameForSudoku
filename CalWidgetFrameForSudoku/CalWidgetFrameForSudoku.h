//
//  CalWidgetFrameForSudoku.h
//  CalWidgetFrameForSudoku
//
//  Created by 宋得中 on 15/10/1.
//  Copyright © 2015年 宋得中. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CalWidgetFrameForSudoku : NSObject
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
- (NSArray*)CreatWidgetsAndCalFrame:(NSInteger)totalWidgetNum andTotalColumn:(NSInteger)totalColumn andTotalWidth:(CGFloat)totalWidth andMargin:(CGFloat)margin andEdgeMargin:(CGFloat)edgeMargin andWidgetH:(CGFloat)widgetH andWidgetClass:(Class)widgetClass;
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
- (NSArray*)CreatWidgetsAndCalFrame:(NSInteger)totalWidgetNum andTotalColumn:(NSInteger)totalColumn andTotalWidth:(CGFloat)totalWidth andEdgeMargin:(CGFloat)edgeMargin andWidgetW:(CGFloat)widgetW andWidgetH:(CGFloat)widgetH andWidgetClass:(Class)widgetClass;

@end
