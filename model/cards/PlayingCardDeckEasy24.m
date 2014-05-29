//
//  PlayingCardDeckEasy24.m
//  Get To 24
//
//  Created by Tony Tam on 5/28/14.
//  Copyright (c) 2014 Yama Llama. All rights reserved.
//

#import "PlayingCardDeckEasy24.h"
#import "PlayingCardEasy24.h"
#import "Debug.h"

@implementation PlayingCardDeckEasy24

// always returns self
// TODO, better way to do this for different type of cards
- (instancetype) init
{
    PlayingCardEasy24 *playingCard = [[PlayingCardEasy24 alloc] init];
    NSArray *validRanks = [playingCard rankStrings];
    if (self) {
        for (NSString *suit in [PlayingCardEasy24 validSuits]) {
            for (NSUInteger rank = 0; rank < [validRanks count]; rank++) {
                PlayingCardEasy24 *card = [[PlayingCardEasy24 alloc] init];

                card.strRank = [playingCard.rankStrings objectAtIndex:rank];
                card.rank = [(NSString *)[validRanks objectAtIndex:rank] integerValue];;
                DLog(@"easy rank = %d %@", (int) card.rank, (NSString *)[validRanks objectAtIndex:rank]);

                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}
@end
