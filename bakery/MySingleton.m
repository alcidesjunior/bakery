//
//  MySingleton.m
//  bakery
//
//  Created by Ada 2018 on 4/6/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

+(MySingleton *) sharedInstance {
    
    static MySingleton *sharedInstance;
    
    if (sharedInstance == nil) {
        sharedInstance = [[MySingleton alloc] init];
    }
    
    return sharedInstance;
}

@end
