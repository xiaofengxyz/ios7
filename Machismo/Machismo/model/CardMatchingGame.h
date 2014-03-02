//
//  CardMatchingGame.h
//  Machismo
//
//  Created by baofengbi on 14-3-2.
//  Copyright (c) 2014年 baofengbi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject
- (instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

- (void) chooseCardAtIndex:(NSUInteger)index;

-(Card *)cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end
