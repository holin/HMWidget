//
//  HMWidgetBase.m
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import "HMWidgetBase.h"

#define PADDING 10

@implementation HMWidgetBase {
    NSString* _url;
}

+ (CGSize)sizeForRate:(float)rate {
    CGSize defaultSize = CGSizeMake(179.0f, 120.0f);
    return [self sizeForRate:rate withDefault:defaultSize];
}

+ (CGSize)sizeForRate:(float)rate withDefault:(CGSize)defaultSize {
    return CGSizeMake(ceilf(defaultSize.width * rate), defaultSize.height);
}


- (HMWidgetBase*)initWithData:(NSDictionary*)data AndSize:(CGSize)size {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self initSubviewsWithData:data AndSize:size];
        
        UITapGestureRecognizer *viewTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTaped:)];
        [self addGestureRecognizer:viewTapRecognizer];

    }
    
    return self;
}

- (void)initSubviewsWithData:(NSDictionary*)data AndSize:(CGSize)size {
    NSString* title = [data objectForKey:@"title"];
    NSString* subtitle = [data objectForKey:@"subtitle"];
    NSString* image = [data objectForKey:@"image"];
    _url = [data objectForKey:@"url"];
    
    //init subviews
    CGRect rect = CGRectMake(PADDING, PADDING, size.width - 2*PADDING, size.height - 30.0f - 2*PADDING);
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.image = [UIImage imageNamed:image];
    
    rect.origin.y += imageView.frame.size.height + 2;
    rect.size.height = 20.0f;
    UILabel* lblTitle = [[UILabel alloc] initWithFrame:rect];
    lblTitle.text = title;
    
    rect.origin.y += lblTitle.frame.size.height + 3;
    rect.size.height = 10.0f;
    UILabel* lblSubTitle = [[UILabel alloc] initWithFrame:rect];
    lblSubTitle.text = subtitle;
    lblSubTitle.textColor = [UIColor grayColor];
    lblSubTitle.font = [UIFont systemFontOfSize:11.0f];
    
    [self addSubview:imageView];
    [self addSubview:lblTitle];
    [self addSubview:lblSubTitle];
}

- (void)viewTaped:(UITapGestureRecognizer*)sender {
    NSLog(@"go url %@", _url);//By tag, you can find out where you had typed.
}



- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGRect frame = self.frame;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    CGPathRef path = CGPathCreateWithRect(rect, NULL);
//    [[UIColor colorWithWhite:0.5f alpha:0.2] setStroke];
//
//    [[UIColor whiteColor] setFill];
//    CGContextAddPath(context, path);
//    CGContextDrawPath(context, kCGPathFillStroke);
//    CGPathRelease(path);
    
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithWhite:0.5f alpha:0.2].CGColor);
    CGContextSetLineWidth(context, 1.0);
    
    //draw left line
    if (frame.origin.x > 0.0f) {
        CGContextMoveToPoint(context, 0.0, 0.0);
        CGContextAddLineToPoint(context, 0.0, frame.size.height);
        CGContextStrokePath(context);
    }
    //draw top line
    if (frame.origin.y > 0.0f) {
        CGContextMoveToPoint(context, 0.0, 0.0);
        CGContextAddLineToPoint(context, frame.size.width, 0.0);
        CGContextStrokePath(context);
    }
    
}

@end
