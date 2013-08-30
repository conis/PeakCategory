//
//  PeakCategory.m
//  PeakCategory-Samples
//
//  Created by conis on 8/25/13.
//  Copyright (c) 2013 conis. All rights reserved.
//

#import "PeakCategory.h"
@implementation UIView(Peak)

- (CGPoint)origin
{
  return [self frame].origin;
}

- (CGSize)size
{
  return [self frame].size;
}

- (CGFloat)left
{
  return [self frame].origin.x;
}

- (CGFloat)top
{
  return [self frame].origin.y;
}

- (CGFloat)width
{
  return [self frame].size.width;
}

- (CGFloat)height
{
  return [self frame].size.height;
}

- (CGFloat) rightX{
  return self.left + self.width;
}

- (CGFloat) bottomY{
  return self.top + self.height;
}

-(CGFloat) percentWidth{
  return self.width / self.superview.width * 100;
}

-(CGFloat) percentHeight{
  return self.height / self.superview.height * 100;
}

-(CGFloat) percentLeft{
  return self.left / self.superview.width * 100;
}

-(CGFloat) percentTop{
  return self.top / self.superview.height * 100;
}


- (void)setOrigin:(CGPoint)origin
{
  [self setTop:origin.y];
  [self setLeft:origin.x];
}

- (void)setSize:(CGSize)size
{
  [self setFrame:CGRectMake(CGRectGetMinX([self frame]), CGRectGetMinY([self frame]), size.width, size.height)];
}

- (void)setTop:(CGFloat)y
{
  self.frameOriginY = y;
}

- (void)setLeft:(CGFloat)x
{
  self.frameOriginX = x;
}

- (void)setWidth:(CGFloat)width
{
  self.frameSizeWidth = width;
}

- (void)setHeight:(CGFloat)height
{
  self.frameSizeHeight = height;
}

-(void) setPercentHeight:(CGFloat)percent{
  self.height = percent / 100 * self.superview.height;
}

-(void) setPercentWidth:(CGFloat)percent{
  self.width = percent / 100 * self.superview.width;
}

-(void) setPercentTop:(CGFloat)percent{
  self.top = percent / 100 * self.superview.height;
}

-(void) setPercentLeft:(CGFloat)percent{
  self.left = percent / 100 * self.superview.width;
}

-(void) circle{
  self.width = self.height;
  self.layer.cornerRadius = self.width / 2;
}

-(void) printSelf{
  
  NSLog(@"%@", self);
}

-(void) printFrame{
  NSLog(@"%@", NSStringFromCGRect(self.frame));
}

-(void) printChildren{
  for (int i = 0; i < self.subviews.count; i++) {
    UIView *view = self.subviews[i];
    [view printSelf];
  }
}
@end

#pragma mark 对NSString进行扩展
@implementation NSString (Helpers)

-(NSString *) trim{
  return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(NSString *) stringWithInt:(NSInteger)value{
  return [NSString stringWithFormat:@"%d", value];
}
@end

