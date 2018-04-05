//
//  Produto.m
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "Produto.h"

@implementation Produto
-(id)initWithNome:(NSString*)nome valor:(int)vlr tempo:(int)tmp{
    if(self = [super init]){
        self.nome = nome;
        self.tempo = tmp;
        self.valor = vlr;
    }
    return self;
}
@end
