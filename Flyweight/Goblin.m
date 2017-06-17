//
//  Goblin.m
//  Flyweight
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Goblin.h"

@implementation Goblin

-(id) init
{
    self = [super init];
    self.name = @"goblin";
    self.health = 20;
    self.image = [FlyweightImageFactory getImage:@"goblin"]; return self;
}

@end
