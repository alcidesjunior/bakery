//
//  Estoque.m
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "Estoque.h"

@implementation Estoque
-(id)initWithSlots: (NSArray*)slots{
    if(self = [super init]){
        self.slots = slots;
    }
    return self;
}
@end
