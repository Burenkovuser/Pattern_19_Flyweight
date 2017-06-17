//
//  FlyweightImageFactory.h
//  Flyweight
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FlyweightImageFactory : NSObject

+(UIImage *) getImage:(NSString *)imageName;

@end
