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
    NSArray * ranks = @[
                        @"1",
                        @"1",
                        @"3",
                        @"8",
                        @"1",
                        @"1",
                        @"6",
                        @"4",
                        @"10",
                        @"10",
                        @"2",
                        @"2",
                        @"9",
                        @"9",
                        @"2",
                        @"4"];
    
    for (int i = 0; i < [ranks count] - 1; i++ ) {
        PlayingCard *card = [[PlayingCard alloc] init];

        card.rank = [[ranks objectAtIndex:i ] integerValue];
        card.strRank = [ranks objectAtIndex:i];
        card.suit = @"♠︎";
        [self addCard:card];
        DLog(@"PlayingCardDeckDeterministic rank = %d", (int) card.rank);
    }
    return self;
}

@end
