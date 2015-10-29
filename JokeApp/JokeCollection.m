//
//  JokeCollection.m
//  JokeApp
//
//  Created by Admin on 29.10.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "JokeCollection.h"

@implementation JokeCollection {
    NSMutableArray* _jokes;
    int currentIndex;
}
- (id) init {
    _jokes = [[NSMutableArray alloc] init];
    [_jokes addObject:@"Joke1"];
    [_jokes addObject:@"Joke2"];
    [_jokes addObject:@"Joke3"];
    [_jokes addObject:@"Joke4"];
    [_jokes addObject:@"Joke5"];
    [_jokes addObject:@"Joke6"];
    currentIndex = 0;
    return self;
}
- (void) putJoke: (NSString *) joke {
    [_jokes addObject:joke];
}
-(NSString*) next {
    unsigned int size = (unsigned int)[_jokes count];
    int current = currentIndex;
    if (currentIndex != size - 1)currentIndex++;
    return [_jokes objectAtIndex:current];
}
-(NSString*) previous {
    int current = currentIndex;
    if (currentIndex > 0)currentIndex--;
    return [_jokes objectAtIndex:current];
}@end
