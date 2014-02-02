//
//  CustomLinksMenu.m
//  MoreMenuBuilder
//
//  Created by apple on 14-2-2.
//  Copyright (c) 2014年 chong. All rights reserved.
//

#import "CustomLinksMenu.h"


@implementation CustomLinksMenu


-(NSArray*)getMenuItems{
    MenuItem *item = [[MenuItem alloc]init];
    item.menuText = @"Custom Link1";
    item.menuClick = ^(){
        NSLog(@"Custom Link 1 clicked");
    };
    return @[item];
}

@end
