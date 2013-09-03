//
//  NSDictionary+Merge.h
//  PeakCategory-Samples
//
//  Created by conis on 9/3/13.
//  Copyright (c) 2013 conis. All rights reserved.
//
// 合并两个Dictionary，代码来来源于 http://stackoverflow.com/questions/4011781/deep-combine-nsdictionaries

#import <Foundation/Foundation.h>

@interface NSDictionary (Merge)

+ (NSDictionary *) dictionaryByMerging: (NSDictionary *) dict1 with: (NSDictionary *) dict2;
- (NSDictionary *) dictionaryByMergingWith: (NSDictionary *) dict;

@end