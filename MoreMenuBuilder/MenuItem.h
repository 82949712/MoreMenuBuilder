//
//  MenuItem.h
//  MoreMenuBuilder
//
//  Created by apple on 14-2-2.
//  Copyright (c) 2014年 chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (strong, nonatomic) NSString *menuText;
@property (strong, nonatomic)void (^menuClick) ();

@end


