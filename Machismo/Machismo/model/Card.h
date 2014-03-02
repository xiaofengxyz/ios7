//
//  Card.h
//  Machismo
//
//  Created by baofengbi on 14-3-1.
//  Copyright (c) 2014年 baofengbi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int) match:(NSArray *) otherCards;

@end
