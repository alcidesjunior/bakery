//
//  Padaria.h
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Produto.h"
#import "Pao.h"
#import "Biscoito.h"
#import "Rosquinha.h"
#import "Pizza.h"
#import "Slot.h"

@interface Padaria : NSObject
    @property NSMutableArray<Slot*> *slots;
    @property (nonatomic) int qtdSlots;
    @property NSMutableArray<Produto*> *vitrine;

    -(void)addSlot:(int)qtd;
    -(void)comprarMaterial: (NSMutableArray *)material;
    -(void)addProduto: (Produto *) produto;//envia para a vitrine
    -(void)venderProdutos;//esvazia lista de estoque
    +(Padaria *)sharedInstance;
@end
