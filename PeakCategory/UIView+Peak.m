//
//  UIView+Peak.m
//  PeakCategory-Samples
//
//  Created by conis on 8/30/13.
//  Copyright (c) 2013 conis. All rights reserved.
//

#import "UIView+Peak.h"

@implementation UIView (Peak)
CALayer *_drawLayer;
UIImage *_drawImage;

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

-(void) drawBorder:(UIViewBorder)border color:(UIColor *)color width:(CGFloat)width{
  if(border & UIViewBorderTop || border & UIViewBorderAround || border & UIViewBorderTopBottom){
    [self drawLineWithFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(self.width, 0) color:color width:width];
  }
  
  if(border & UIViewBorderRight || border & UIViewBorderAround || border & UIViewBorderLeftRight){
    [self drawLineWithFromPoint:CGPointMake(self.width, 0) toPoint:CGPointMake(self.width, self.height) color:color width:width];
  }
  
  if(border & UIViewBorderBottom || border & UIViewBorderAround || border & UIViewBorderTopBottom){
    [self drawLineWithFromPoint:CGPointMake(0, self.height) toPoint:CGPointMake(self.width, self.height) color:color width:width];
  }
  
  if(border & UIViewBorderLeft || border & UIViewBorderAround || border & UIViewBorderLeftRight){
    [self drawLineWithFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(0, self.height) color:color width:width];
  }
  
  if(border & UIViewBorderSlash){
    [self drawLineWithFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(self.width, self.height) color:color width:width];
  }
  
  if(border & UIViewBorderBackslash){
    [self drawLineWithFromPoint:CGPointMake(0, self.height) toPoint:CGPointMake(self.width, 0) color:color width:width];
  }
}

-(void) drawLineWithFromPoint:(CGPoint)from toPoint:(CGPoint)to color:(UIColor *)color width:(CGFloat)width{
  if(_drawLayer == nil){
    _drawLayer = [[CALayer alloc] init];
    _drawLayer.frame = self.bounds;
    ;
    [self.layer addSublayer: _drawLayer];
  }
  
  UIGraphicsBeginImageContext(self.size);
	CGContextRef ctx = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(ctx, 1.0f, -1.0f);
	CGContextTranslateCTM(ctx, 0.0f, -self.frame.size.height);
  
  if (_drawImage != nil) {
		CGContextDrawImage(ctx, self.bounds, _drawImage.CGImage);
	}
  
	CGContextSetLineCap(ctx, kCGLineCapRound);
	CGContextSetLineWidth(ctx, width);
	CGContextSetStrokeColorWithColor(ctx, color.CGColor);
	CGContextMoveToPoint(ctx, from.x, from.y);
	CGContextAddLineToPoint(ctx, to.x, to.y);
	CGContextStrokePath(ctx);
	CGContextFlush(ctx);
  
	_drawImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	_drawLayer.contents = (id)_drawImage.CGImage;
}

//重置画布，针对画线与边框
-(void) resetCanvas{
  [_drawLayer removeFromSuperlayer];
  _drawLayer = nil;
  _drawImage = nil;
}
@end
