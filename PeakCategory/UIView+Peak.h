//
//  UIView+Peak.h
//  PeakCategory-Samples
//
//  Created by conis on 8/30/13.
//  Copyright (c) 2013 conis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Helpers.h"
#import <QuartzCore/QuartzCore.h>

typedef NS_ENUM(NSUInteger, UIViewBorder){
  UIViewBorderTop = 1 << 0,
  UIViewBorderRight = 1 << 1,
  UIViewBorderBottom = 1 << 2,
  UIViewBorderLeft = 1 << 3,
  UIViewBorderLeftRight = 1 << 4,
  UIViewBorderTopBottom = 1 << 5,
  UIViewBorderAround = 1 << 6,
  UIViewBorderSlash = 1 << 7,
  UIViewBorderBackslash = 1 << 8
};

@interface UIView (Peak)
- (CGFloat)left;
- (CGFloat)top;
- (CGFloat)width;
- (CGFloat)height;
- (CGSize)size;
- (CGPoint)origin;
- (CGFloat)rightX;
- (CGFloat)bottomY;
- (CGFloat)percentHeight;
- (CGFloat)percentWidth;
- (CGFloat)percentLeft;
- (CGFloat)percentTop;

- (void)setSize:(CGSize)size;
- (void)setOrigin:(CGPoint)origin;
- (void)setTop:(CGFloat)y;
- (void)setLeft:(CGFloat)x;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void) setPercentWidth: (CGFloat) percent;
- (void) setPercentHeight: (CGFloat) percent;
- (void) setPercentLeft: (CGFloat) percent;
- (void) setPercentTop: (CGFloat) percent;
- (void) circle;

//绘制边框，或者线
-(void) drawBorder: (UIViewBorder) border color: (UIColor *) color width: (CGFloat) width;
//画线
-(void) drawLineWithFromPoint: (CGPoint) from toPoint: (CGPoint) to color: (UIColor *) color width: (CGFloat) width;
//清除画布
-(void) resetCanvas;

//打印出自己
-(void) printSelf;
-(void) printFrame;
//打开所有子节点
-(void) printChildren;
@end
