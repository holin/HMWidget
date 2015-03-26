//
//  HMWidgetHorizontalOneThree.m
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import "HMWidgetHorizontalOneThree.h"

@implementation HMWidgetHorizontalOneThree

+ (CGSize)sizeForRate:(float)rate {
    CGSize defaultSize = CGSizeMake(118.0f, 98.0f);
    return [self sizeForRate:rate withDefault:defaultSize];
}

@end
