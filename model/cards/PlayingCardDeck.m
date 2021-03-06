//
//  PlayingCardDeck.m
//  Card
//
//  Created by Tony Tam on 1/2/14.
//  Copyright (c) 2014 com.wordpress.tonytam. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "Debug.h"

@implementation PlayingCardDeck

// always returns self
- (instancetype) init
{
    PlayingCard *playingCard = [[PlayingCard alloc] init];
    self = [super init];
    DLog(@"init");
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [playingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.strRank = [playingCard.rankStrings objectAtIndex:rank];
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
