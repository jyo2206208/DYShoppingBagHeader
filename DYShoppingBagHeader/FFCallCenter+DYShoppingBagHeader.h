//
//  FFCallCenter+DYShoppingBagHeader.h
//  DYShoppingBagHeader_Example
//
//  Created by farfetch on 2017/12/7.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import <FFCallCenter/FFCallCenter.h>

@interface FFCallCenter (DYShoppingBagHeader)

- (UIViewController *)shoppingBagViewController;
- (void)addToShoppingBagWithConfirmAction:(void(^)(NSDictionary *info))confirmAction;

@end
