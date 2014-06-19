//
//  PlayingCardDeckDeterministic.m
//  Get To 24
//
//  Created by Tony Tam on 6/18/14.
//  Copyright (c) 2014 Yama Llama. All rights reserved.
//

#import "PlayingCardDeckDeterministic.h"
#import "Debug.h"

@implementation PlayingCardDeckDeterministic
- (instancetype) init
{
    PlayingCard *card = [[PlayingCard alloc] init];
    NSArray * ranks = @[
                        @"8",
                        @"1",
                        @"6",
                        @"3",
                        @"8",
                        @"1",
                        @"6",
                        @"3"];
    
    for (int i = 0; i < [ranks count]; i++ ) {
        card.rank = [[card.rankStrings objectAtIndex:[ranks objectAtIndex:i]] integerValue];
        card.strRank = [card.rankStrings objectAtIndex:[ranks objectAtIndex:i]];
        card.suit = @"";
        [self addCard:card];
        DLog(@"rank = %d", (int) card.rank);
    }
    return self;
}
@end
