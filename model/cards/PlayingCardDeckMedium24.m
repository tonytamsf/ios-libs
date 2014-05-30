//
//  PlayingCardDeckMedium24.m
//  Get To 24
//
//  Created by Tony Tam on 5/29/14.
//  Copyright (c) 2014 Yama Llama. All rights reserved.
//

#import "PlayingCardDeckMedium24.h"
#import "PlayingCardMedium24.h"
#import "Debug.h"

@implementation PlayingCardDeckMedium24

// always returns self
// TODO, better way to do this for different type of cards
- (instancetype) init
{
    PlayingCardMedium24 *playingCard = [[PlayingCardMedium24 alloc] init];
    if (self) {
        for (NSString *suit in [PlayingCardMedium24 validSuits]) {
            for (NSUInteger rank = 0; rank < [playingCard maxRank]; rank++) {
                PlayingCardMedium24 *card = [[PlayingCardMedium24 alloc] init];
                card.rank = [[playingCard.rankStrings objectAtIndex:rank] integerValue];
                card.strRank = [playingCard.rankStrings objectAtIndex:rank];
                card.suit = suit;
                [self addCard:card];
                DLog(@"rank = %d", (int) card.rank);
            }
        }
    }
    return self;
}
@end
