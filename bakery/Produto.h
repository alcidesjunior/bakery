//
//  Produto.h
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Produto : NSObject
@property int tempo;
@property float valor;
@property NSString *nome;

-(id)initWithNome:(NSString*)nome valor:(int)vlr tempo:(int)tmp;
@end
