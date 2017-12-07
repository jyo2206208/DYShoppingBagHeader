//
//  FFCallCenter+DYShoppingBagHeader.m
//  DYShoppingBagHeader_Example
//
//  Created by farfetch on 2017/12/7.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "FFCallCenter+DYShoppingBagHeader.h"

@implementation FFCallCenter (DYShoppingBagHeader)

- (UIViewController *)shoppingBagViewController{
    return [self performTarget:@"DYShoppingBag" action:@"shoppingBagViewController" params:nil shouldCacheTarget:YES];
}

- (void)addToShoppingBagWithConfirmAction:(void(^)(NSDictionary *info))confirmAction{
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    if (confirmAction) {
        paramsToSend[@"confirmAction"] = confirmAction;
    }
    
    [self performTarget:@"DYShoppingBag" action:@"addProductToBag" params:paramsToSend shouldCacheTarget:NO];
}

@end
