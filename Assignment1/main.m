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
        SiteValue *china = [SiteValue siteValueWithUsername:@"Hello" andPassword:@"ddfsd"];
        SiteValue *hello = [SiteValue siteValueWithUsername:@"JPREZ" andPassword:@"helloworld"];
        SiteValue *gmail = [SiteValue siteValueWithUsername:@"jacobo" andPassword:@"preston"];
        SiteValue *twitter = [SiteValue siteValueWithUsername:@"jac" andPassword:@"pdsfsd"];
        
        NSMutableDictionary *login = [NSMutableDictionary dictionary];
        
        [login setObject:china forKey:@"China"];
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

