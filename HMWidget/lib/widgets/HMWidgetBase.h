//
//  HMWidgetBase.h
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMWidgetBase : UIView


+ (CGSize)sizeForRate:(float)rate;
+ (CGSize)sizeForRate:(float)rate withDefault:(CGSize)defaultSize;
- (HMWidgetBase*)initWithData:(NSDictionary*)data AndSize:(CGSize)size;
- (void)initSubviewsWithData:(NSDictionary*)data AndSize:(CGSize)size;



@end
