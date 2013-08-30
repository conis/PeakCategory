//
//  NSString+Peak.m
//  PeakCategory-Samples
//
//  Created by conis on 8/30/13.
//  Copyright (c) 2013 conis. All rights reserved.
//

#import "NSString+Peak.h"

@implementation NSString (Peak)
-(NSString *) trim{
  return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(NSString *) stringWithInt:(NSInteger)value{
  return [NSString stringWithFormat:@"%d", value];
}
@end
