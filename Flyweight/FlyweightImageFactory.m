//
//  FlyweightImageFactory.m
//  Flyweight
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "FlyweightImageFactory.h"

@implementation FlyweightImageFactory

NSMutableDictionary *_imageDictionary;

+(UIImage *)getImage:(NSString *)imageName
{
    if (!_imageDictionary)
        _imageDictionary = [[NSMutableDictionary alloc] init];
    if (![_imageDictionary objectForKey:imageName]) {
        [_imageDictionary setObject:[UIImage imageNamed:[[NSString alloc]
                                                         initWithFormat:@"%@.jpeg",imageName]] forKey:imageName];
        NSLog(@"Loading image of the %@", imageName);
    }
    return [_imageDictionary objectForKey:imageName];
}

@end
/* flyweight иммет только один класс метод, который картинку по имени то и возвращает. Если картинки под таким именем нету в его словаре – то она грузится из бандла, если же есть – то просто передается ссылка на нее. Каждый раз когда картинка грузится из бандла мы логируем сообщение, это сделано для того чтобы увидеть сколько раз происходит подгрузка изображения из бандла.
*/
