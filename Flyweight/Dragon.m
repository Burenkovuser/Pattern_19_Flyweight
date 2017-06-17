//
//  Dragon.m
//  Flyweight
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

-(id) init {
    self = [super init];
    self.name = @"Dragon";
    self.health = 150;
    self.image = [FlyweightImageFactory getImage:@"dragon"];
    return self;
}

@end

/*
конструкторе наших юнитов загружать картинку не на прямую, а через наш паттерн
*/
