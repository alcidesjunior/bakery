//
//  Padaria.h
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pao.h"
#import "Biscoito.h"
#import "Rosquinha.h"
#import "Pizza.h"
#import "Slot.h"
@interface Padaria : NSObject
    @property NSArray<Slot*> *estoque;

@end
