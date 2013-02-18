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
        SiteValue *hello = [[SiteValue alloc] initWithUsername:@"JPREZ" andPassword:@"helloworld"];
        SiteValue *gmail = [[SiteValue alloc] initWithUsername:@"jacobo" andPassword:@"preston"];
        SiteValue *twitter = [[SiteValue alloc] initWithUsername:@"jac" andPassword:@"pdsfsd"];
        
        NSMutableDictionary *login = [NSMutableDictionary dictionary];
        
        [login setObject:hello forKey:@"facebook"];
        [login setObject:gmail forKey:@"gmail"];
        [login setObject:twitter forKey:@"twitter"];
        
        
        for (NSString *key in login) {
            NSLog(@"For key %@:", key);
            [[login objectForKey:key] printSiteValue];
        }
        
        [login removeObjectForKey:@"twitter"];
        
        for (NSString *key in login) {
            [[login objectForKey:key] incrementCount];
        }
        
        for (NSString *key in login) {
            NSLog(@"For key %@:", key);
            [[login objectForKey:key] printSiteValue];
        }
        
        
    }
    return 0;
}

