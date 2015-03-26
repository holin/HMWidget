//
//  HMWidgetBox.m
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import "HMWidgetBox.h"
#import "HMWidgetBase.h"
#import "HMWidgetVerticalFull.h"
#import "HMWidgetHorizontalOneThree.h"
#import "HMWidgetHorizontalOneThreeOver.h"

# define STD_WIDTH (375.0f)


@implementation HMWidgetBox {
    NSDictionary* _data;
}

static NSDictionary* widgetMap = nil;


- (void)layout {
    if (_data != nil) {
        CGRect bonus = self.bounds;
        float rate = bonus.size.width / STD_WIDTH;
        
        NSLog(@"\n\n");
        NSLog(@"box width %f, height %f", bonus.size.width, bonus.size.height);
        
        NSDictionary* widgets = [_data objectForKey:@"widgets"];
        CGRect rect = CGRectMake(0.0f, 0.0f, bonus.size.width, bonus.size.height);
        CGPoint minPoint = CGPointMake(0.0f, bonus.size.height);
        for (NSDictionary* widget in widgets) {
            NSString* name = [widget objectForKey:@"name"];
            NSDictionary* data = [widget objectForKey:@"data"];
            HMWidgetBase* widgetKlass = [widgetMap objectForKey:name];
            CGSize size = [[widgetKlass class] sizeForRate:rate];
            
            HMWidgetBase* widgetView = [[[widgetKlass class] alloc] initWithData:data AndSize:size];
            rect.size.width = size.width;
            rect.size.height = size.height;
            
            NSLog(@"\n");
            NSLog(@"rect width %f, height %f", rect.size.width, rect.size.height);


//            if (rect.origin.x > 0) {
//                rect.origin.x -= 1;
//            }
            // calc rect
            if (rect.origin.x + rect.size.width > bonus.size.width) {
                rect.origin.x = minPoint.x;
                rect.origin.y = minPoint.y;
            }
//            if (rect.origin.y > 0) {
//                rect.origin.y -= 1;
//            }
            widgetView.frame = rect;
            [self addSubview:widgetView];
            
            
            float nextY = rect.origin.y + rect.size.height;
            if (nextY < minPoint.y) {
                minPoint.y = nextY;
                minPoint.x = rect.origin.x;
            }
            
            NSLog(@"minPoint x %f, y %f", minPoint.x, minPoint.y);
            
            rect.origin.x += rect.size.width;

            
        }
    }
}

- (void)feed:(NSDictionary *)data {
    [self initSetting];
    _data = data;
}

- (void)initSetting {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        widgetMap = @{
                      @"HMWidgetBase": [HMWidgetBase class],
                      @"HMWidgetVerticalFull": [HMWidgetVerticalFull class],
                      @"HMWidgetHorizontalOneThree": [HMWidgetHorizontalOneThree class],
                      @"HMWidgetHorizontalOneThreeOver": [HMWidgetHorizontalOneThreeOver class],
                    };
    });
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGPathRef path = CGPathCreateWithRect(rect, NULL);
    [[UIColor colorWithWhite:0.5f alpha:0.2] setStroke];

    [[UIColor whiteColor] setFill];
    CGContextAddPath(context, path);
    CGContextDrawPath(context, kCGPathFillStroke);
    CGPathRelease(path);

    
}

@end
