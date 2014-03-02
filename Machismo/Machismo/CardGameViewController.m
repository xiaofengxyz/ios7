//
//  CardGameViewController.m
//  Machismo
//
//  Created by baofengbi on 14-2-23.
//  Copyright (c) 2014年 baofengbi. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation CardGameViewController

- (Deck *) deck
{
    if (!_deck)
        _deck = [self createDeck];
    return _deck;
}

-(Deck *) createDeck
{
    return [[PlayingCardDeck alloc]init];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}


- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle: @"" forState:UIControlStateNormal];
    } else {
        Card *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        }

    }
    self.flipCount++;
    
}


@end
