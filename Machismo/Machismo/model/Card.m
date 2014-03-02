//
//  Card.m
//  Machismo
//
//  Created by baofengbi on 14-3-1.
//  Copyright (c) 2014年 baofengbi. All rights reserved.
//

#import "Card.h"
@interface Card()
@end

@implementation Card
@synthesize contents = _contents;

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
   
    return score;
}
@end
