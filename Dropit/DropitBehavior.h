//
//  DropitBehavior.h
//  Dropit
//
//  Created by Denis C de Azevedo on 09/02/14.
//  Copyright (c) 2014 Denis C de Azevedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end
