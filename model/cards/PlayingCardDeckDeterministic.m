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
                        @"8",
                        @"4",
                        @"6",
                        @"6",
                        @"8",
                        @"1",
                        @"6",
                        @"3"];
    
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
