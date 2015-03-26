//
//  ViewController.m
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import "ViewController.h"
#import "HMWidgetBox.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet HMWidgetBox *box3;
@property (weak, nonatomic) IBOutlet HMWidgetBox *box1;
@property (weak, nonatomic) IBOutlet HMWidgetBox *box2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];

    NSDictionary* data = @{
       @"widgets" : @[
               @{
                   @"name" : @"HMWidgetBase",
                   @"data" : @{
                           @"title": @"热门场馆",
                           @"subtitle": @"热门的场馆",
                           @"image": @"1.jpg",
                           @"url": @"http://weixin.1yd.me/a",
                           
                           }
                   },
               @{
                   @"name" : @"HMWidgetBase",
                   @"data" : @{
                           @"title": @"热门场馆",
                           @"subtitle": @"热门的场馆",
                           @"image": @"2.jpg",
                           @"url": @"http://weixin.1yd.me/b",
                           
                           }
                   },
       ]
    };
    
    [self.box1 layoutIfNeeded];
    
    [self.box1 feed:data];
    [self.box1 layout];
    
    
    
    data = @{
             @"widgets" : @[
                     @{
                         @"name" : @"HMWidgetHorizontalOneThree",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"2.jpg",
                                 @"url": @"http://weixin.1yd.me/2",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThree",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"1.jpg",
                                 @"url": @"http://weixin.1yd.me/3",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetVerticalFull",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"1.jpg",
                                 @"url": @"http://weixin.1yd.me/1",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThree",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"3.jpg",
                                 @"url": @"http://weixin.1yd.me/4",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThreeOver",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"2.jpg",
                                 @"url": @"http://weixin.1yd.me/5",
                                 
                                 }
                         },
                     ]
             };
    
    [self.box2 layoutIfNeeded];
    
    [self.box2 feed:data];
    [self.box2 layout];
    
    data = @{
             @"widgets" : @[
                     @{
                         @"name" : @"HMWidgetVerticalFull",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"1.jpg",
                                 @"url": @"http://weixin.1yd.me/1",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThree",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"2.jpg",
                                 @"url": @"http://weixin.1yd.me/2",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThree",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"1.jpg",
                                 @"url": @"http://weixin.1yd.me/3",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThree",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"3.jpg",
                                 @"url": @"http://weixin.1yd.me/4",
                                 
                                 }
                         },
                     @{
                         @"name" : @"HMWidgetHorizontalOneThreeOver",
                         @"data" : @{
                                 @"title": @"热门场馆",
                                 @"subtitle": @"热门的场馆",
                                 @"image": @"2.jpg",
                                 @"url": @"http://weixin.1yd.me/5",
                                 
                                 }
                         },
                     ]
             };
    
    [self.box3 layoutIfNeeded];
    
    [self.box3 feed:data];
    [self.box3 layout];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
