//
//  HMWidgetHorizontalOneThreeOver.m
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import "HMWidgetHorizontalOneThreeOver.h"

#define PADDING 10

@implementation HMWidgetHorizontalOneThreeOver

+ (CGSize)sizeForRate:(float)rate {
    CGSize defaultSize = CGSizeMake(118.0f, 98.0f);
    return [self sizeForRate:rate withDefault:defaultSize];
}

- (void)initSubviewsWithData:(NSDictionary*)data AndSize:(CGSize)size {
    NSString* title = [data objectForKey:@"title"];
    NSString* subtitle = [data objectForKey:@"subtitle"];
    NSString* image = [data objectForKey:@"image"];
    
    //init subviews
    CGRect rect = CGRectMake(PADDING, PADDING, size.width - 2*PADDING, size.height - 2*PADDING);
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.image = [UIImage imageNamed:image];
    
    rect.origin.y += 2;
    rect.size.height = 20.0f;
    UILabel* lblTitle = [[UILabel alloc] initWithFrame:rect];
    lblTitle.textColor = [UIColor whiteColor];
    lblTitle.text = title;
    
    rect.origin.y += lblTitle.frame.size.height + 3;
    rect.size.height = 10.0f;
    UILabel* lblSubTitle = [[UILabel alloc] initWithFrame:rect];
    lblSubTitle.text = subtitle;
    lblSubTitle.textColor = [UIColor redColor];
    lblSubTitle.font = [UIFont systemFontOfSize:11.0f];
    
    [self addSubview:imageView];
    [self addSubview:lblTitle];
    [self addSubview:lblSubTitle];
}


@end
