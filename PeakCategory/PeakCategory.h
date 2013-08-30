//
//  PeakCategory.h
//  PeakCategory-Samples
//
//  Created by conis on 8/25/13.
//  Copyright (c) 2013 conis. All rights reserved.
//

/*
 常用的Category，并增加自已常用的部分
*/

#import <Foundation/Foundation.h>
#import "UIView+Helpers.h"
#import "NSDate+Helper.h"
#import "NSDate-Utilities.h"
#import <QuartzCore/QuartzCore.h>
//#import "UIColor+ColorWithHex.h"

//在UIView+Helpers的基础上，对UIView再扩展
@interface UIView(Peak)
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

//打印出自己
-(void) printSelf;
-(void) printFrame;
//打开所有子节点
-(void) printChildren;
@end

@interface NSString (Helpers)

-(NSString *) trim;
+(NSString *) stringWithInt: (NSInteger)value;
@end

