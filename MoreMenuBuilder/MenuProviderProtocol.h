//
//  MenuProviderProtocol.h
//  MoreMenuBuilder
//
//  Created by apple on 14-2-2.
//  Copyright (c) 2014年 chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuItem.h"

@protocol MenuProviderProtocol <NSObject>

-(NSArray*)getMenuItems;

@end
