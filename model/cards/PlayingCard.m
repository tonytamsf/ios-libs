//
//  PlayingCard.m
//  Card
//
//  Created by Tony Tam on 1/2/14.
//  Copyright (c) 2014 com.wordpress.tonytam. All rights reserved.
//

#import "PlayingCard.h"
#import "Debug.h"

@implementation PlayingCard

@synthesize suit = _suit; // because we provide settings and getters
@synthesize contents = _contents;

- (NSString *) contents
{
    return [NSString stringWithFormat:@"%d", _rank];
                              
}

+ (NSArray *) validSuits
{
    return @[@"♠︎",
             @"♣︎",
             @"♥︎",
             @"♦︎"];
}

- (NSUInteger) maxRank {
    return [[self rankStrings] count];
}

- (void) setRank:(NSInteger)  rank
{
    _rank = rank;
    _strRank = [NSString stringWithFormat:@"%d", rank];
}

- (NSArray *) rankStrings
{
    return @[
             @"A",
             @"2",
             @"3",
             @"4",
             @"5",
             @"6",
             @"7",
             @"8",
             @"9",
             @"10",
             @"J",
             @"Q",
             @"K"];
}

- (void) setSuit:(NSString *) suit
{
    if([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) description
{
    return [self contents];
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

- (UIColor *) cardColor
{
    if ([self.suit isEqualToString:@"♠︎"] ||
        [self.suit isEqualToString:@"♣︎"]
        ) {
        return [UIColor blackColor];
    }
    // TODO
    return [UIColor blackColor];
}

@end
