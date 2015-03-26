//
//  HMWidgetVerticalFull.m
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import "HMWidgetVerticalFull.h"

@implementation HMWidgetVerticalFull

+ (CGSize)sizeForRate:(float)rate {
    CGSize defaultSize = CGSizeMake(122.0f, 196.0f);
    return [self sizeForRate:rate withDefault:defaultSize];
}

@end
