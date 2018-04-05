//
//  Slot.m
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "Slot.h"

@implementation Slot
-(id)initWithIngrediente:(NSString*)ingrediente{
    if(self = [super init]){
        self.ingrediente = ingrediente;
    }
    return self;
}
@end
