//
//  main.m
//  Assignment1
//
//  Created by Jacob Preston on 2/15/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        SiteValue *hello = [[SiteValue alloc] init];
        NSMutableDictionary *login = [NSMutableDictionary dictionary];
        
        [login setObject:hello forKey:@"test"];
        
        [[login objectForKey:@"test"] printSiteValue ];
        
        [hello incrementCount];
        [hello printSiteValue];
        
        
        
        
        
    }
    return 0;
}

