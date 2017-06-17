//
//  BasicUnit.h
//  Flyweight
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BasicUnit : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int health;
@property (nonatomic, strong) UIImage *image;

@end
