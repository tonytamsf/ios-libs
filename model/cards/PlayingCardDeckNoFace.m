//
//  PlayingCardDeckNoFace.m
//  Get To 24
//
//  Created by Tony Tam on 5/13/14.
//  Copyright (c) 2014 Yama Llama. All rights reserved.
//

#import "PlayingCardDeckNoFace.h"
#import "PlayingCardNoFace.h"

@implementation PlayingCardDeckNoFace

// always returns self
// TODO, better way to do this for different type of cards
- (instancetype) init
{
    PlayingCardNoFace *playingCard = [[PlayingCardNoFace alloc] init];
    if (self) {
        for (NSString *suit in [PlayingCardNoFace validSuits]) {
            for (NSUInteger rank = 0; rank < [playingCard maxRank]; rank++) {
                PlayingCardNoFace *card = [[PlayingCardNoFace alloc] init];
                card.rank = [[playingCard.rankStrings objectAtIndex:rank] integerValue];
                card.strRank = [playingCard.rankStrings objectAtIndex:rank];
                card.suit = suit;
                [self addCard:card];
                NSLog(@"rank = %d", (int) card.rank);
            }
        }
    }
    return self;
}

@end
