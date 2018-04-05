//
//  Padaria.m
//  bakery
//
//  Created by Ada 2018 on 4/5/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

#import "Padaria.h"

@implementation Padaria
-(id)init{
    if(self = [super init]){
        _qtdSlots = 2;//inicializa a quantidade inicial de slots que eu posso ter
    }
    return self;
}
/*
 ESTOQUE/SLOTS = SAO VARIOS SLOTS -> 2
 VITRINE = É A PRODUCAO
 */
/*
 caso eu precise expandir a quantidade de slots
 eu atualizo a quantidade de slots que eu posso
 ter
 */
-(void)addSlot:(int) qtd{
    if( (qtd +_qtdSlots) <= 6){
        _qtdSlots += qtd;
    }
}
/*
 caso eu tenha quantidade de slots
 suficiente, eu posso comprar um novo
 material
 */
-(void)comprarMaterial: (NSMutableArray *)material{
    if([_slots count] <= _qtdSlots){
        [_slots addObjectsFromArray:material];
    }
}
/*
 na view controller que vai executar a producao do produto
 vai ter q funcao fabricarProduto que vai conter o timer etc...
 quando concluido, ele vai chamar a funcao
 addProduto desta classe aqui e enviar para a vitrine
 */
-(void)addProduto: (Produto *) produto{
    if([_vitrine count] <=4 ){
        [_vitrine addObject:produto];
    }
}//envia para a vitrine
-(void)venderProdutos{
    [_vitrine removeAllObjects];
}//esvazia lista de estoque
@end
