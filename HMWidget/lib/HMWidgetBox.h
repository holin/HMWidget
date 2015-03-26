//
//  HMWidgetBox.h
//  HMWidget
//
//  Created by holin on 3/26/15.
//  Copyright (c) 2015 Holin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMWidgetBox : UIView

// 根据 widgets 来布局
- (void)layout;

// 配置信息

/* 
 * @params data {widgets: [{name: widget1, data: {title: title1, subtitle: subtitle2, image: http://sf.png}]}
 *
 */
- (void)feed:(NSDictionary*)data;

@end
