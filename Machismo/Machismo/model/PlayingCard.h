//
//  PlayingCard.h
//  Machismo
//
//  Created by baofengbi on 14-3-1.
//  Copyright (c) 2014年 baofengbi. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
