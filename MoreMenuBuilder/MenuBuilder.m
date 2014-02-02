//
//  MenuBuilder.m
//  MoreMenuBuilder
//
//  Created by apple on 14-2-2.
//  Copyright (c) 2014年 chong. All rights reserved.
//

#import "MenuBuilder.h"
#import <objc/runtime.h>
#import "MenuProviderProtocol.h"

@implementation MenuBuilder

-(NSArray*) buildMoreMenu{
    NSArray *result = @[];
    Class *classes = NULL;
    int num = objc_getClassList(NULL, 0);
    if(num > 0){
        classes = malloc(sizeof(Class) * num);
        num = objc_getClassList(classes, num);
        for (int i = 0; i<num; i++) {
            Class class = classes[i];
            if(class_conformsToProtocol(class, @protocol(MenuProviderProtocol))){
                id instance = [[class alloc]init];
                NSArray *items = [instance performSelector:@selector(getMenuItems) withObject:NULL];
                result = [result arrayByAddingObjectsFromArray:items];
                break;
            }
        }
        free(classes);
    }
    return result;
}

@end
