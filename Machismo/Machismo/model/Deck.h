//
//  Deck.h
//  Machismo
//
//  Created by baofengbi on 14-3-1.
//  Copyright (c) 2014年 baofengbi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard :(Card *) card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;
- (Card *) drawRandomCard;

@end
