//
//  Estoque.h
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Slot.h"

@interface Estoque : NSObject
    @property NSArray<Slot*> *slots;
    -(id)initWithSlots: (NSArray*)slots;
@end
